# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "async_partial/version"

Gem::Specification.new do |s|
  s.name        = "async_partial"
  s.version     = AsyncPartial::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benjamin Roth", "David Ruyer"]
  s.email       = ["apnea.diving.deep@gmail.com", "david.ruyer@gmail.com"]
  s.homepage    = "https://github.com/apneadiving/AsyncPartial/"
  s.summary     = %q{Async Partial is a helper to insert partials in Rails3 views with Ajax using jQuery.}
  s.description = %q{Async Partial is a helper to insert partials in Rails3 views with Ajax using jQuery. You can even pass variables like a common render :partial, :locals }

  #s.rubyforge_project = "async_partial"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end