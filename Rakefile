require 'bundler/gem_tasks'
require 'rake/packagetask'
require 'rake/clean'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new
task :default => :spec

Dir.glob('lib/tasks/*.rake').each do |r|
  import r  
end
