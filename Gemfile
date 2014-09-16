source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

gem 'awesome_print'
gem 'figaro'
gem 'bootstrap-sass', '>= 3.0.0.0'

# gem 'simple_form'

# gem 'client_side_validations', github: "bcardarella/client_side_validations", :branch => "4-0-beta"
# gem 'client_side_validations-simple_form', git: 'git://github.com/saveritemedical/client_side_validations-simple_form.git'

gem 'sidekiq'

group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'rails_layout'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem "capybara-webkit"
  gem "launchy"
  gem 'selenium-webdriver'
  gem 'email_spec'
  gem "spork-rails"
  gem 'shoulda-matchers'
  gem 'capybara-bootstrap-datepicker'
  gem 'capybara-email'
  gem 'webmock'
end