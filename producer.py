from ctypes import *
CDLL("C:\programdata\Anaconda3\Lib\site-packages\confluent_kafka.libs\librdkafka-5d2e2910.dll")

from confluent_kafka import Producer, TopicPartition
import socket
import pandas as pd 
from time import sleep
# ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 2 --topic testtopic
# ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 2 --topic testtopic2
# ./kafka-topics.sh --describe --zookeeper localhost:2181 --topic testtopic
# ./kafka-topics.sh --list --zookeeper localhost:2181 --topic testtopic


class App():
    def __init__(self):
        self.topic = 'utec_big_data'
        self.conf_producer = {
            'bootstrap.servers': 'localhost:9092',
            'client.id': socket.gethostname(),
            # 'enable.idempotence': True,
        }
        self.producer = Producer(self.conf_producer)

    def produce(self, data):
        #self.producer.produce(self.topic, data)
        self.producer.produce(self.topic, key=None, value=data)
        self.producer.flush()


app = App()


df = pd.read_csv("data.csv")
for index, row in df.iterrows():
    data = f"date: {row['Date']}, time: {row['Time']}, temp: {row['Temperature']}" 
    sleep(1)
    app.produce(data)
