require 'spec_helper'
require 'webpipe'

describe Webpipe::Task do

  it "has method created as a Time" do
    task = Webpipe::Task.new
    expect(task.created).to be_a(Time)
  end

end
