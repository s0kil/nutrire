source 'https://rubygems.org'

ruby '2.7.2'

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
# https://www.salsify.com/blog/engineering/automatic-eager-loading-rails
gem 'goldiloader'

# Detect N+1 queries
# Does not yet support Rails 6.1.0.rc1
gem 'bullet'

# User Authentication
gem 'clearance'

# Forms
gem 'simple_form'

# Tailwind CSS
gem 'tailwindcss'

# Image Uploads
gem 'carrierwave'

# URI Builder
gem 'iri'

group :production do
  # A High Performance HTTP Server for Ruby
  gem 'agoo'
end

group :development, :test do
  gem 'puma'

  # Debug
  gem 'active_record_query_trace'
  gem 'apparition'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'byebug-dap'
  # Does Not Work With Rails v6.1.0
  # gem 'meta_request'
  gem 'active_record_doctor'
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'lol_dba'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webdrivers', require: false
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
