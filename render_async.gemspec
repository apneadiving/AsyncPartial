# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "async_partial"
  s.summary = "Async Partial is a helper to insert partials with Ajax."
  s.description = "Async Partial is a helper to insert partials with Ajax. You can even pass option and variables async, see documentation."
  s.files = Dir["lib/**/*", "app/**/*", "public/**/*", "config/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"
end