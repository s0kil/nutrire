source 'https://rubygems.org'

ruby '2.7.1'

gem 'bootsnap', require: false
gem 'pg'
gem 'rails'
gem 'sass-rails'
gem 'turbolinks'
gem 'webpacker'

# Haml Templating
gem 'hamlit'
gem 'hamlit-rails'
gem 'html2haml'

# Automatic eager loading for Active Record
gem 'goldiloader'

# N+1 queries
gem 'bullet'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :production do
  # A High Performance HTTP Server for Ruby
  gem 'agoo'
end

group :development, :test do
  gem 'puma'

  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'active_record_doctor'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'lol_dba'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'

  # Linters
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
end
