source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use bootstrap3 as frontend styling framework
gem 'bootstrap-sass'
# Use font-awesome for different icons
gem 'font-awesome-sass'
# gem 'jquery-turbolinks'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use carrierwave for image upload
gem 'carrierwave'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use puma as the app server
gem 'puma'

# Use dropzonejs for image file upload on client side
gem 'dropzonejs-rails'
# Use city-state gem for list of all countries, states and cities(always updated from MadMax server)
gem 'city-state'

# Elasticsearch integration for rails active record
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem 'searchkick'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', group: :doc

  gem 'listen'

  # Use Mina for deployment
  # gem 'mina', group: :development
end

group :production do
  # For use with elastic search on heroku
  gem 'bonsai-elasticsearch-rails'
end
