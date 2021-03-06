# Anatomy of a Rails Application
### March 5th, 2013, [Ruby on Rails for Beginners Meetup](http://www.rails.mn)

## Introduction
This repository and discussions from tonight are heavily based around the work done by Daniel Dekoe. For license information and further, more in-depth content please visit [the original repo](https://github.com/RailsApps/rails-prelaunch-signup). 

Tonight, [Derek Rockwell](http://www.derekrockwell.com), [Weston Platter](http://www.twitter.com/westonplatter) and [Daniel Kent](http://www.twitter.com/thatdankent) will take you through the setup of this basic 'pre-launch' website built on Ruby on Rails. Our goals are to teach you:
* How to copy this codebase to your machine
* How to configure your code to be able to deploy to your machine
* A high-level overview of the structure of a Ruby on Rails application and how it works top to bottom
* How to add a simple feature
* Some tips and best practices for developing in Rails
* (Time permitting) configure your application to deploy to Heroku and be internet accessible

If at any point during the session you would like some clarification, don't hesitate to ask questions.

## Before you start
Make sure you have:
* Ruby 1.9.3 (with RVM or otherwise)
* Ruby on Rails 3.2
* Git and a [GitHub](https://github.com/signup/free) account

If you do not have any of these please contact one of the organizers to help you get started.

A good resource for installing a Rails environment on your own can be found [here](http://railsapps.github.com/installing-rails.html)

## Getting started
### Copy the GitHub repo to your machine
Open a terminal window and use 'cd' to change to a directory you want to work in.

	mkdir railsmn
	cd railsmn

In that directory, pull down your own copy of this repository 

	git clone https://github.com/railsmn/anatomy-of-rails-app.git
	cd anatomy-of-rails-app

You should now be able to look at your new Rails application by running:
	
	bundle install
	rake db:migrate
	rake db:seed
	rails s


## Overview
We'll go over the critical pieces of any Ruby on Rails application, namely:
* Gemfile - concepts behind Gems, Bundler and RubyGems
* Views - where the HTML and CSS resources are kept
* Models - code representation of data, possibly backed by a database, used within your view (users, blog posts, product information, etc. 
* Controllers - the link between your views and your models, acts on input from the website user and shepards data from the model back to the user via the views
* Assets - where your CSS and JavaScript are stored and handled by the 'asset pipeline'. Responsible for styling and user interactivity of your web pages.
* Config - where various configuration settings reside for Ruby on Rails

For a review and more detailed information about each of these parts after tonights session, you may visit [the official Rails getting started page](http://guides.rubyonrails.org/getting_started.html)

### Steps to 'invite' a user to the invite-only app

* Access your [app](http://localhost:3000) and click the 'Request Invite' button and fill out your email
* Go to the [sign-in page](http://localhost:3000/users/sign_in) and fill out the default admin data that you loaded with 'rake db:seed': user@example.com/changeme
* Access the 'admin' page and click the send invitation link next to your email
* Since we don't have the ability to send e-mails right now in our development environment, we need to 'fake it' and create the URL ourselves with the Rails console
	
		rails console
		User.last.confirmation_token #copy the characters without the quotations
		exit

	Now we need to find out where to put this token so we can create the same link that the e-mail would create. In your terminal run:

		rake routes

	This will generate a list of all of the URLs your app can respond to. The key one we are looking for is:

		GET    /users/confirmation(.:format)          confirmations#show

	This corresponds to the url http://localhost:3000/users/confirmation where we can now add our token as follows:

		http://localhost:3000/users/confirmation?confirmation_token=your_token_here

	Access the above URL and enter in a password for the e-mail you registered with

* You are now logged in to what is soon to be your invite-only app!


## Add a feature
### Disabling users
The high level 'best practice' for adding a feature to a Rails apps is as follows:

1. Create a new Git 'branch' for your feature
2. Create tests that detail the implementation of that feature (we'll skip this for this session and talk about testing in later meetups, but it is very important!)
3. Implement until those tests pass
4. Merge your Git branch 
5. Deploy

On the admin page if we look at our table of users, we notice that there is no way for an administrator to disallow users access to our app

1. A link on the admin page
2. A controller method to accept the link request 
3. Update our user model to manage being disabled
4. Check the status of disabled users when they log in

To see the changes that were made, check out the [commit history on GitHub](https://github.com/railsmn/anatomy-of-rails-app/commits/develop) showing the final state of this application

## Conclusion	

A lot was covered today and it was presented with the intention of giving you a whirlwind tour of how Rails works and then showing how to create a real feature. From here we encourage you to hack on your own apps and leverage us as a resource as you learn Rails.

Until next time!
	