# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "propshaft"
gem "puma"
gem "rails", "~> 7.0.4"

gem "importmap-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"

gem "sorbet-runtime"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development do
  gem "listen"

  gem "bundler-leak", require: false
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-sorbet", require: false

  gem "sorbet"

  gem "tapioca", require: false

  gem "ruby-lsp"
end

group :test do
  gem "rails-controller-testing"
end
