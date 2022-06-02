from ctypes import *
CDLL("C:\programdata\Anaconda3\Lib\site-packages\confluent_kafka.libs\librdkafka-5d2e2910.dll")
from confluent_kafka import Consumer, TopicPartition
from redis_manager import StoreRedis
from config import REDIS_STORE_KEY
import json

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
    self.store_redis = StoreRedis()
    self.store_redis.clear(REDIS_STORE_KEY)
  
  def consume(self, topic='utec_big_data'):
    self.consumer = Consumer(self.conf)
    self.topic = topic
    self.consumer.subscribe([self.topic])
    try:
      while True:
        print("_")
        msg = self.consumer.consume(10)
        if msg is None:
            continue
        
        data_batch = []
        for i in msg:
          value = i.value()
          value = value.decode("utf-8")

          # prepare for redis
          value = json.loads(value)
          print(value)
          data_batch.append(value)
          

          partition = i.partition()
          offset = i.offset()
          self.consumer.commit(
            offsets=[TopicPartition(topic=self.topic,
                                    partition=partition,
                                    offset=offset+1)],asynchronous=False)
                        
        # store in redis
        self.store_redis.request(
          REDIS_STORE_KEY, data_batch
        )

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