require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "async_partial"
  gem.homepage = "https://apneadiving@github.com/apneadiving/AsyncPartial.git"
  gem.license = "MIT"
  gem.summary = %Q{Async Partial is a helper to insert partials in Rails3 views with Ajax.}
  gem.description = "Async Partial is a helper to insert partials in Rails3 views with Ajax. You can even pass variables like a common `render :partial => my_partial, :locals => {}`"
  gem.email = "apnea.diving.deep@gmail.com"
  gem.authors = ["Benjamin Roth", "David Ruyer"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new
