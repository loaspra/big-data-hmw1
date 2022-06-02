import redis
import json
REDIS_HOST = 'localhost'
REDIS_PORT = 6379


class StoreRedis():

    def __init__(self):
        self.redis_host = REDIS_HOST
        self.redis_port = REDIS_PORT
        # self.redis = redis.StrictRedis(
        #    host=self.redis_host, port=self.redis_port, decode_responses=True)
        self.redis = redis.Redis(host=self.redis_host,
                                 port=self.redis_port, decode_responses=True)
        #self.redis = redis.Redis()

    def clear(self, key):
        self.redis.delete(key)

    def request(self, key, list_data):
        # self.redis.set(key, value)
        for data in list_data:
            
            score = int(data["timestamp"])
            print(str(json.dumps(data)),score)
            # look into redis for an existence object score with the same timestamp
            query = self.redis.zrangebyscore(
                key, score, score)  # logn complexity
            if query == []:
                self.redis.zadd(key, {str(json.dumps(data)): score})
            else:
                if query == data:
                    print("completly repeated !!!!!!!!!! ")
                    pass
                else:
                    self.redis.zadd(key, {str(json.dumps(data)): score})
        print("sent")
        return

    def response(self, key, width):
        msg = "no response"
        list_data = []
        try:
            msg = self.redis.zrange(key, -1-width-1, -1)
            for data in msg:
                list_data.append(json.loads(data))
            # msg = self.redis.get(key)
        except Exception as e:
            print(e, "the key does not exist!")
        return list_data


#if __name__ == '__main__':
    #store_redis = StoreRedis()
    ##store_redis.clear("quotx")
    #store_redis.request(
    #    "quotx", [
    #        {"timestamp": "5", "user_id": "blabla"},
    #        {"timestamp": "2", "user_id": "blabla"},             
    #        {"timestamp": "1", "user_id": "blabla"}]
    #        )
    
    #print(store_redis.response("quotx",2))