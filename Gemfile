# Define the source for gems
source "https://rubygems.org"

# Load dependencies from the .gemspec file
begin
  eval_gemspec = eval(File.read("aspose_pdf_cloud.gemspec"))
rescue Errno::ENOENT => e
  puts "Error: Could not find aspose_pdf_cloud.gemspec. Ensure the file exists in the current directory."
  raise e
rescue StandardError => e
  puts "Error: Failed to evaluate aspose_pdf_cloud.gemspec. Check the file for syntax errors."
  raise e
end

# Add runtime dependencies
runtime_dependencies = eval_gemspec.dependencies.select { |d| d.type == :runtime }
runtime_dependencies.each do |dep|
  gem dep.name, dep.requirement.to_s
end

# Add development dependencies
group :development do
    gem 'ci_reporter_minitest'
    gem 'minitest', '~> 5.11.3'
    gem 'rake'
    gem 'rubocop', '~> 1.74.0'

  development_dependencies = eval_gemspec.dependencies.select { |d| d.type == :development }
  development_dependencies.each do |dep|
    gem dep.name, dep.requirement.to_s
  end
end