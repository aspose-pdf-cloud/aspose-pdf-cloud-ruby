require 'bundler/gem_tasks'
require 'rake/testtask'
require 'ci/reporter/rake/minitest'
ENV['CI_REPORTS'] = 'test/reports'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
end
task test: 'ci:setup:minitest'
task default: :test
