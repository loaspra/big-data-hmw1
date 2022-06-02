from confluent_kafka import Producer, TopicPartition
import socket
import pandas as pd 
from time import sleep
import json
# ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 2 --topic testtopic
# ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 2 --topic testtopic2
# ./kafka-topics.sh --describe --zookeeper localhost:2181 --topic testtopic
# ./kafka-topics.sh --list --zookeeper localhost:2181 --topic testtopic
from datetime import datetime

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
        print("produce:", data)
        self.producer.produce(self.topic, key=None, value=data)
        self.producer.flush()


app = App()


df = pd.read_csv("data.csv")
for index, row in df.iterrows():
    date_time_str = f"{row['Date']} {row['Time']}"
    print(date_time_str)
    date_time_obj = datetime.strptime(date_time_str, '%d.%m.%Y %H:%M')

    print(date_time_obj)
    data = {
        "date_time": date_time_obj.strftime("%Y-%m-%d %H:%M:%S"),
        "timestamp": datetime.timestamp(date_time_obj),
        "date": row["Date"],
        "time": row["Time"],
        "temperature": row["Temperature"],
        "radiation": row["GHI"],
    }
    data_str = json.dumps(data)
    sleep(1)
    app.produce(data_str)
