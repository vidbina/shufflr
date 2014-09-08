require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.pattern = "spec/*_spec.rb"
end

Rake::TestTask.new('test:performance') do |t|
  t.pattern = "spec/performance/*_performance_spec.rb"
end
