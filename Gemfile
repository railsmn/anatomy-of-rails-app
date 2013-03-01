source 'https://rubygems.org'

#these gems are available to all environments
gem 'rails', '3.2.12'

#hominid adds support for Mailchimp newsletters
gem "hominid", ">= 3.0.5"

#devise adds well-tested user authentication
gem "devise", ">= 2.2.3"

#cancan and rolify extend user authentication
#with 'roles' and restricting what those roles can do
#eg admin, moderator, user, etc
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"

#simple_form is used to make writing web forms easier
gem "simple_form", ">= 2.0.4"

#figaro allows you to store configuration files
#so you can keep them out of source control
#for sharing repositories on github/heroku
gem "figaro", ">= 0.5.3"

gem "google_visualr", ">= 2.1.2"
gem "jquery-datatables-rails", ">= 1.11.2"


#these gems will only be used in test or development
#environments to support testing and debugging
group :test, :development do
	gem 'sqlite3'

	#testing support
	gem "rspec-rails", ">= 2.12.2"
	gem "database_cleaner", ">= 0.9.1"
	gem "email_spec", ">= 1.4.0"
	gem "cucumber-rails", ">= 1.3.0"
	gem "launchy", ">= 2.2.0"
	gem "capybara", ">= 2.0.2"
	gem "factory_girl_rails", ">= 4.2.0"
	
	#making development more sane
	gem "quiet_assets", ">= 1.0.1"
	gem "better_errors", ">= 0.6.0"
	gem "binding_of_caller", ">= 0.7.1"
end

#these gems are only loaded in production
group :production do
	gem 'pg' #Heroku database support
end

#these gems are leveraged by the asset pipeline
#to bundle together css/js files for Rails
group :assets do
	gem 'sass-rails',   '~> 3.2.3'
	gem 'coffee-rails', '~> 3.2.1'
	gem 'uglifier', '>= 1.0.3'
	gem "bootstrap-sass", ">= 2.3.0.0"
	gem 'jquery-rails'
end

