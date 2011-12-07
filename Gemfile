source 'http://rubygems.org'

gem 'rails', '3.1.1'

if RUBY_PLATFORM == 'java'
  gem 'jruby-openssl'
  gem 'jrclj', :git => "git://github.com/kyleburton/jrclj.git", :branch => "cc0a0be630eb01f64680811edc48270b5fe77dcb"
  gem 'activerecord-jdbcsqlite3-adapter'
else
  gem 'sqlite3'
end

gem 'jquery-rails'
gem "rspec-rails", ">= 2.7.0", :group => [:development, :test]
gem "bson_ext", "~> 1.4"
gem "mongoid", "~> 2.3"
gem "devise", ">= 1.4.9"

gem "simple_form"
gem "rest-client"
gem 'airbrake'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  # The less version requires v8, which doesn't work with JRuby. See
  # http://rubysource.com/twitter-bootstrap-less-and-sass-understanding-your-options-for-rails-3-1/
  # for deciding the correct option.

end

gem 'twitter-bootstrap-rails', :git => "git://github.com/seyhunak/twitter-bootstrap-rails.git", :branch => "static"

group :test do
  gem "cucumber-rails", ">= 1.1.1"
  gem "capybara", ">= 1.1.1"
  gem "database_cleaner", ">= 0.6.7"
  gem "mongoid-rspec", ">= 1.4.4"
  gem "factory_girl_rails", ">= 1.3.0"
  gem "launchy", ">= 2.0.5"
  gem "minitest"
  gem 'turn', :require => false  # Pretty printed test output
end

group :development do
  gem 'rake'
  gem 'hpricot'
  gem 'ruby_parser'
end

gem 'haml-rails'

gem "trinidad"

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
