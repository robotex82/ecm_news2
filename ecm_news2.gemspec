$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecm/news/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'ecm_news2'
  s.version     = Ecm::News::VERSION
  s.authors     = ['Roberto Vasquez Angel']
  s.email       = ['roberto@vasquez-angel.de']
  s.homepage    = 'https://github.com/robotex82/ecm_news2'
  s.summary     = 'ECM News module.'
  s.description = 'Preovides News functionality.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '> 4.0'

  # Module dependencies
  s.add_dependency 'acts_as_markup'
  s.add_dependency 'acts_as_published'
  s.add_dependency 'friendly_id'
  s.add_dependency 'kaminari'
  s.add_dependency 'bootstrap-kaminari-views'
  s.add_dependency 'ecm_pictures2'

  # Dummy app
  s.add_development_dependency 'rails-dummy'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency 'devise'
  s.add_development_dependency 'twitter-bootstrap-rails'

  # Development Server
  s.add_development_dependency 'thin'

  # Documentation
  s.add_development_dependency 'yard'

  # Active admin
  s.add_development_dependency 'activeadmin', '~> 1.0.0.pre2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'less-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'therubyracer'

  # Tests
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails'

  # Test automation
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'
end
