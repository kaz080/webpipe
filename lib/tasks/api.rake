# API

namespace :api do
  desc "Ping localhost 10 times"
  task :ping do
    sh "ping -c 10 localhost"
  end
end
