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

	Put some recommended links about each above

### Steps to 'invite' a user to the invite-only app

1. send an invitation from form while not logged in
2. log in as admin from seed data
3. send invitation
4. tinker around within rails console to get confirmation token (talk about devise a little bit)
5. access confirmation url

## Add a feature
### Deleting a user
(rough steps, fill in)

1. Git branch
2. Create tests
3. Implement

## Conclusion	
	