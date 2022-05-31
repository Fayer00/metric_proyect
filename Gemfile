# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'


gem 'bootsnap', require: false
gem 'bootstrap', '~> 5.1.3'
gem 'chartkick'
gem 'cssbundling-rails' # Install bootstrap 5
gem 'groupdate'
gem 'jsbundling-rails'  # needed for bootstrap javascript
gem 'rails', '~> 7.0.3'
gem 'sprockets-rails'
gem "pg", "~> 1.3"
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]



group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "faker" # Library that generates fake data
  gem 'rails-controller-testing'
  gem 'rubocop', require: false
  gem "rspec-rails" # Testing framework
  gem 'standard'
end

group :development do\
  gem 'web-console'
  gem 'erb_lint'
end


group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end
