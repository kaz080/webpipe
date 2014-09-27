# API

require 'JSON'

namespace :api do
  desc "Ping localhost 10 times"
  task :ping do
    sh "ping -c 10 localhost"
  end

  desc "Cat colored JSON 10 times"
  task :pong do
    json = JSON.generate({ :hoge => "fuga" })
    10.times do
      sh "echo '#{json}' | jq -C ."
      sleep 1
    end
  end
end
