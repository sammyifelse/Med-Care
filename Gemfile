source "https://rubygems.org"


gem "rails", "~> 7.2.1"

gem "pg"

gem "groupdate" # for grouping by date

gem "psych"

gem "devise"

gem "sprockets-rails"

gem "puma", ">= 5.0"
gem "importmap-rails"


gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false


  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end


group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "chartkick", "~> 5.1"
