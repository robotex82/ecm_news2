source "https://rubygems.org"

# Declare your gem's dependencies in ecm_news.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'ruby-debug'

# gem 'acts_as_published', path: '~/rails/modules/acts_as_published-master'
# gem 'ecm_pictures2', :path => '~/rails/rails4-modules/ecm_pictures2-master'

unless ENV['TRAVIS_RUBY_VERSION'].nil?
  gem 'pg'
  gem 'mysql2'
end
