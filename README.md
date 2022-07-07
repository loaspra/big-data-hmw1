# Data serving and Forecasting
Weather forecasting using producer/consumer from Apache Kafka.
This code will predict 10 future observations of climate (temperature and radiation). The project its meant to be deployed in the Amarzon Forest.

The dimmensions of the supervied model can be changed in its definition (after training):
```python
OUT_STEPS = 10
multi_window = WindowGenerator(input_width=100,
                               label_width=OUT_STEPS,
                               shift=OUT_STEPS)
```


The imput of the model are tuples of the form (timestamp, temperature). Feature engineering was performed to treat the time as a periodic function 
(becuase the temperature at 23:59 is not too different than at 0:01, even though the magnitude is different).

I really enjoyed the feature engineering performed to the data, from finding the most frequent temperature (using the fourier transform) to creating a parsing
function that converts the date/time object into a timestamp and then fed it onto sin/cos functions:


![image](https://user-images.githubusercontent.com/40249960/177692865-5b8fc718-1182-4a1e-9213-78d65c4d65cb.png) <br />
Date/time object converted into periodic functions. As the data is taken each 15 minutos (1/4 of hour) every (24x4) 96 samples represent a whole day (because a day 
has 24 hours, and we have 4 samples per hour).





And, of course, normalization:




![image](https://user-images.githubusercontent.com/40249960/177692900-db51fc42-5370-4aa8-ab92-48b089f66d81.png)
<br />
Normalized features (you can see that sin/cos functions are simmetrical).

I ♥ feature engineering


---

### Kafka Producer
The producer will caught the data from a JSON file and pass it to the **produce( _data_ )** method. Then will be flushed to another Kafka cluster
Here is the "procuce" method:
```python

def produce(self, data):
    #self.producer.produce(self.topic, data)
    self.producer.produce(self.topic, key=None, value=data)
    self.producer.flush()
```



### Kafka Consumer
The consumer method gets a topic and suscribes to it, then it start serving the data, in this case, to the console.
This is carried out inside the consume method:
```python
while True:
        msg = self.consumer.consume(10)
        if msg is None:
            continue
        for i in msg:
          value = i.value()
          print(value, type(value))
          partition = i.partition()
          offset = i.offset()
          self.consumer.commit(
            offsets=[TopicPartition(topic=self.topic,
                                    partition=partition,
                                    offset=offset+1)],asynchronous=False)
```
---

### Supervised Approach
Tipically, in basic forecasting, simpler models like moving average are used (like ARIMA) and they offer decent performance. However, when the train data is big enough 
a supervised approach will generally perform better. The dataset used has 2976 samples, with a samplinf perido of 15 minutes, so there's only data from the month of december (2018)
and the advantage of the supervised learning will not be that big.
The results of two predictions:

![image](https://user-images.githubusercontent.com/40249960/177692143-8f5b979d-b57f-4b9b-88c0-76069b73e683.png)
