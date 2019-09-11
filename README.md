# README

Rails application for managing projects 

Employee-Team-Projects 

Roles : Admin, Developer

As Admin:

|| Able to create a project.
|| Able to Create a List Of TODO item for Project.
|| Able to Assign to Developer.
|| Able to Add Mutliple Developer To Projects.

As Developer

|| Able t See a TODO list For particular Developer.
|| Able to mark as "New, In Progress, Done" for project.


gem list : Devise, Cancancan


ruby -v 
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]
rails -v 
Rails 5.1.5


want to use MySQL

rails new manapro -d mysql
bundle install
rake db:create
Adding Authentication with Devise
gem 'devise' and run bundle install
rails g devise:install


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
