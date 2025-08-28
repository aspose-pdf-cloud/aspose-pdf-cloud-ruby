require 'bundler/gem_tasks'
require 'rake/testtask'
require 'ci/reporter/rake/minitest'

ENV['CI_REPORTS'] = 'test/reports'
if ENV['FARADAY_TIMEOUT'].to_i.zero?
  ENV['FARADAY_TIMEOUT'] = '1200'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*.rb']
  t.verbose = true
end

task :setup_test_environment do
  require_relative 'test/faraday_config' if File.exist?('test/faraday_config.rb')
end

task test: [:setup_test_environment, 'ci:setup:minitest']

task default: :test
