source 'https://rubygems.org'
ruby "2.1.8"
gem 'rails', '~> 4.0'
gem 'sass-rails', "~> 4.0.2"
gem 'uglifier', '>= 1.0.3'
gem 'jquery-rails'
gem "thin", ">= 1.4.1"
gem "pg", ">= 0.14.0"
gem "haml", ">= 3.1.7"
gem "bootstrap-sass", ">= 2.0.4.0"

group :development do
  gem "haml-rails"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"
end

group :test do
  gem "capybara", ">= 1.1.2"
  gem 'database_cleaner' # clean db between runs
end

group :development, :test do
  gem "factory_girl_rails", ">= 4.0.0"
  gem "rspec-rails", ">= 2.11.0"
  gem "shoulda"
  gem "test-unit"
end

gem 'simple_form' # for simple forms and integration with twitter bootstrap
gem 'nested_form' # for nested songs inside album
gem "validates_timeliness" # validates dates
gem 'paperclip' # for upload file functionality
gem "mini_magick" # for image content type validation, ImageMagick interface
gem 'aws-sdk' # for s3 storage (heroku's file system is read only)
gem 'rockstar' # for last.fm
gem 'textacular' # for search
gem 'utf8_enforcer_workaround' # to remove "utf8=✓" from 'get' queries
gem 'protected_attributes' # for a clean transition to Rails 4.0
gem 'rails_12factor', group: :production # needed for heroku
gem "appsignal" # monitorization
