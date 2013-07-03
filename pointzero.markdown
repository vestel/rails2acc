title: .zero
author: Aleksandrs Zdancuks
copyright: Copyright (c) 2013 Accenture
footer:
subfooter:


Training start
==============

[Training tutorial](http://ruby.railstutorial.org/)


Installing rails
================

    $ vim ~/.gemrc
    install: --no-rdoc --no-ri
    update: --no-rdoc --no-ri
    <ESC>:wq<ENTER>

Execute

    $ gem install rails -v 3.2.13

Check with

    $ rails -v
    Rails 3.2.13


Creating rails app
==================

    $ rails new r2app
    ...
    ...
    ...
    $ cd r2app


Configuring rails app
=====================

Gemfile

    ...
    group :development do
      gem 'sqlite3', '1.3.5'
    end
    ...


Bundle

    $ bundle update && bundle install


Launching server
================

    $ rails server



