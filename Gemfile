source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem "tzinfo-data", platforms: [:mingw, :mswin]
require 'rbconfig'
gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i

gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'
gem 'devise', '~>3.5.1'

group :development, :test do
gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

group :doc do
gem 'sdoc', require: false
end	
#gem 'sdoc', '~> 0.4.0',    
      


