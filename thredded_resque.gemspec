$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "thredded_resque/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "thredded_resque"
  s.version     = ThreddedResque::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ThreddedResque."
  s.description = "TODO: Description of ThreddedResque."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
end
