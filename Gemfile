source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'linecache19', :git => 'git://github.com/mark-moseley/linecache'
  gem 'ruby-debug-base19x', '~> 0.11.30.pre4'
  gem 'ruby-debug19'         #, :require => 'ruby-debug'  
  gem 'database_cleaner'  # to clear Cucumber's test database between runs
  gem 'capybara'   # lets Cucumber pretend to be a web browser
  gem 'launchy'  # a useful debugging aid for user stories
  gem 'rspec-rails', '2.10.0'
  gem 'simplecov'
end
group :test do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels'  # some pre-fabbed step definitions  
end
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.   https://www.youtube.com/watch?v=vdi2t_gePAc&feature=player_embedded
group :assets do
  gem 'factory_girl_rails', '1.0'
  gem 'therubyracer'              
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'haml'
