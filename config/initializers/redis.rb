$redis = Redis.new(:driver => :hiredis)
$redis = Redis.new(url: ENV["REDIS_URL"])
