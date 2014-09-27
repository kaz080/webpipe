require "webpipe/version"

module Webpipe
  # Your code goes here...

  class Task
    attr_reader :created
    def initialize
      @created = Time.now
    end
  end

end
