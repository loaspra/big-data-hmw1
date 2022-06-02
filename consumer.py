from ctypes import *
CDLL("C:\programdata\Anaconda3\Lib\site-packages\confluent_kafka.libs\librdkafka-5d2e2910.dll")
from confluent_kafka import Consumer, TopicPartition


class DataCapture():
  def __init__(self):
    self.conf = {
      'bootstrap.servers': 'localhost:9092',
      'group.id': 'test',
      'auto.offset.reset': 'earliest',
      'enable.auto.commit': 'false',
      'max.poll.interval.ms': 500000,
      'session.timeout.ms': 120000,
      'request.timeout.ms': 120000,
    }
  
  def consume(self, topic='bigdata-streams'):
    self.consumer = Consumer(self.conf)
    self.topic = topic
    self.consumer.subscribe([self.topic])
    try:
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
                        
        #user = msg.value()
      

        #if user is not None:
        #    print(f"partition: {partition}")
        #    print(f"offset: {offset}")
        #    print(user)
            # print(f'User name: {user.name}, '
            #       f'favorite number:{user.favorite_number}, '
            #       f'favorite color:{user.favorite_color}, '
            #       f'twitter handle:{user.twitter_handle}')
        # self.consumer.commit([TopicPartition(partition, offset)])
        
    except KeyboardInterrupt:
    
      print("error")
    print('closing the consumer')
    self.consumer.close()

  
capture = DataCapture()
capture.consume('utec_big_data')