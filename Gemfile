# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "~> 6.1.4", ">= 6.1.4.1"
# Use Puma as the app server
gem "puma", "~> 5.0"

gem "importmap-rails", "~> 0.8.1"
gem "stimulus-rails", "~> 0.7.1"

gem "tailwindcss-rails", "~> 0.4.3"

group :development, :test do
  gem "rubocop", "~> 1.19.1", require: false
  gem "rubocop-performance", "~> 1.11.5", require: false
  gem "rubocop-rails", "~> 2.11.3", require: false
end

group :development do
  gem "listen", "~> 3.3"
end

group :test do
  gem "rails-controller-testing", "~> 1.0.5"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
