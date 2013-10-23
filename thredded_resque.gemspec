$:.push File.expand_path("../lib", __FILE__)

require "thredded_resque/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'thredded_resque'
  s.version     = ThreddedResque::VERSION
  s.authors     = ['Joel Oliveira']
  s.email       = ['joel@thredded.com']
  s.homepage    = 'https://www.thredded.com/meta'
  s.summary     = 'thredded_resque adds resque, and resque-mailer support to thredded'
  s.description = 'thredded_resque adds resque, and resque-mailer support to thredded'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.mkdn']
  s.add_dependency 'rails', '~> 4.0.0'
  s.add_dependency 'resque'
  s.add_dependency 'resque_mailer'
  s.add_development_dependency 'sqlite3'
end
