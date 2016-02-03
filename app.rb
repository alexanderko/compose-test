require "sinatra"
require "redis"

redis = Redis.new(host: "redis")

get "/hi" do
  redis.incr("hits")
  "Hello World! Hits: " + redis.get("hits")
end
