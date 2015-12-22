ruby '2.2.3'
source 'https://rubygems.org'

# https://rails-assets.org dependancy
gem 'bundler', '>= 1.8.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# server runner
gem "puma"

# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.3.20'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# usded for markdown render for the editor on pages
gem 'redcarpet'

# used to syntax highlight code
# gem 'coderay'

# Use clearance for user authentication
gem 'clearance'

# This is required by `clearance`, but we use it elsewhere as well.
gem 'email_validator'

# Style related gems to make working with asset pipeline easier.
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass'

# reference any Bower components that you need as gems in the following convention:
# gem 'rails-assets-BOWER_PACKAGE_NAME'
source 'https://rails-assets.org' do
  gem 'rails-assets-sweetalert'
  gem 'rails-assets-outdated-browser'
end


# sweet alert confirm, pipline use for sweet alerts
gem 'sweet-alert-confirm'

group :production do

  # Send emails when exceptions happen on production
  gem 'exception_notification'

end

group :development, :test do

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

end

group :development, :test do

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

end
