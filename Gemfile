ruby '2.4.3'

source 'https://rubygems.org'

gem 'rails', '5.1.5'
gem 'pg'
gem 'puma'
gem 'seed-fu'
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'autoprefixer-rails'
gem 'turbolinks'
gem 'meta-tags'
gem 'font-awesome-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '~> 3.5.1'
  gem 'byebug'

  group :test do
    gem 'dotenv-rails', '~> 2.2.1'
    gem 'byebug', platform: :mri
    gem 'pry-rails'
    gem 'pry-doc'
    gem 'pry-stack_explorer'
    gem 'pry-byebug'
    gem 'rubocop', '~> 0.52.0', require: false
    gem 'rubocop-checkstyle_formatter', require: false
    gem 'parser'
  end
end

group :test do
  gem 'turnip'
  gem 'capybara', '~> 2.17'
  gem 'rspec-its'

  group :development do
    gem 'guard-rails'
    gem 'guard-rspec'
    gem 'guard-rubocop'
    gem 'guard-bundler', require: false
    gem 'guard-yard'
    gem 'rspec-rails', '~> 3.6.0'
    gem 'factory_bot_rails'
    gem 'database_rewinder'
  end
end

group :production do
end
