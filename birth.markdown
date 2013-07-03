title: Birth of the Monster
author: Aleksandrs Zdancuks
copyright: Copyright (c) 2013 Accenture
footer:
subfooter:


Agenda
======

  * Generating skeleton
  * Controllers and routes
  * Rspec introduction
  * Introducing layout, embedding ruby

Training start
==============

[Training tutorial](http://ruby.railstutorial.org/chapters/static-pages/)

    http://ruby.railstutorial.org/chapters/static-pages/

Installing rails
================

Execute

    $ gem install rails -v 3.2.13

Check with

    $ rails -v
    Rails 3.2.13


Creating rails app
==================

`$ rails new lesson2` **`--skip-test-unit`**


Other useful stuff
==================

* Rails API `http://api.rubyonrails.org/`
* Mongo `http://www.mongodb.org/downloads`
* Mongoid `http://mongoid.org/`


Configuring rails app
=====================

Gemfile

    ...
    gem 'jquery-rails'
    gem 'execjs', '1.4.0'
    gem 'therubyracer', '0.11.4', :platforms => :ruby

    group :development do
      gem 'mongoid', '~> 3.0.0'
      gem 'rspec-rails', '2.11.0'
    end

    group :test do
      gem 'capybara', '1.1.2'
    end

    group :production do
      gem 'mongoid', '~> 3.0.0'
    end
    ...


Install dependencies
====================

Bundle

    $ bundle update 
    $ bundle install --without production


Manage Heroku plugins
=====================

    $ heroku addons:add mongohq:sandbox


Generate Rspec dependencies
===========================

    $ rails generate rspec:install


Plain old HTMLs
===============

Located in `public/`

Let's do some!


Generating static controller
============================

    $ rails generate controller StaticPages home help --no-test-framework



in case of emergency:

    $ rails destroy controller StaticPages


Routes
======

What's routes? Look at `config/routes.rb`


Let's go TDD
============

    $ rails generate integration_test static_pages


    $ vim spec/requests/static_pages_spec.rb



Keywords
========

* describe
* it
* visit
* page.should
* have\_content
* have\_selector


DRY
===

`app/views/layouts/application.html.erb`

<%= code 'application.html.erb', :lang => 'erb', :engine => 'coderay' %>


