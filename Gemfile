# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "propshaft", "~> 0.6.4"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3"

gem "importmap-rails", "~> 1.1.2"
gem "stimulus-rails", "~> 1.0.4"
gem "tailwindcss-rails", "~> 2.0.10"

gem "sorbet-runtime"

group :development do
  gem "listen", "~> 3.3"

  gem "bundler-leak", require: false
  gem "rubocop", "~> 1.29", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", "~> 1.14", require: false
  gem "rubocop-rails", "~> 2.14", require: false
  gem "rubocop-sorbet", require: false

  gem "sorbet"

  gem "tapioca", "~> 0.8.3", require: false

  gem "ruby-lsp"
end

group :test do
  gem "rails-controller-testing", "~> 1.0.5"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
