title: Third Wave
author: Aleksandrs Zdancuks
copyright: Copyright (c) 2013 Accenture
footer:
subfooter:


This presentation
=================

    $ git clone https://github.com/vestel/rails2acc
    $ cd rails2acc
    $ bundle install
    $ slideshow install slidy
    $ slideshow build -t slidy thirdwave.markdown


Sign in
=======

* How do we "remember" and "forget" user?
* What the session is?


Session controller
==================

    $ rails g controller Sessions new create destroy --no-test-framework
    $ rails g controller integration_test authentication_pages


Authentication pages
====================

<%= code 'code/auth_page_spec_1.rb', :lang => 'ruby', :engine => 'coderay' %>


Routes
======

`resources :sessions, only: [:new, ..]`

`match '/signin', to: 'sessions#new'`

`match '/signin', to: 'sessions#new', via: :delete`


More authentication specs
=========================

<%= code 'code/auth_page_spec_2.rb', :lang => 'ruby', :engine => 'coderay' %>


Meet FactoryGirl!
=================
![Factory Girl](images/factory_girl_1.jpg)


Sorry, wrong girl
=================
![Factory Girl](images/factory_girl_2.jpg)


Gemfile fixes
=============

    gem 'factory_girl_rails', '4.1.0'

    $ bundle install


Founding factories
==================

<%= code 'code/spec_factories.rb', :lang => 'ruby', :engine => 'coderay' %>


Correct way to create user
==========================

<% code do %>
    let(:user) { FactoryGirl.create(:user) }
<% end %>


More tests for sign in
==================

<%= code 'code/auth_page_spec_3.rb', :lang => 'ruby', :engine => 'coderay' %>


Filling form in the test
========================

    visit signup_path
    fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "foobar"
    fill_in "Confirmation", with: "foobar"
    click_button "Create my account"


Checking user registered
========================

    expect { click_button "Create my account" }.not_to change(User, :count)


