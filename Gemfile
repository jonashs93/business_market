source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# default gems
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.4.2', require: false

# additional gems
gem 'validates_email_format_of', '1.6.0'
gem 'validates_cpf_cnpj', '0.2.0'
gem 'versionist', '2.0.1'

group :test do
  gem 'rspec-rails', '4.0.0.beta3'
  gem 'shoulda-matchers', '4.1.2'
  gem 'json_spec', '1.1.5'
  gem 'factory_bot_rails', '5.1.1'
  gem 'ffaker', '2.11.0'
  gem 'rails-controller-testing', '1.0.4'
end
