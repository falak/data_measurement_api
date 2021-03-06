# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

### Ruby and Rails version

* 2.6.3
* 6.0.0

### System dependencies

* mysql

To install these under an Ubuntu-like OS using apt:

    $ sudo apt-get install mysql

For Mac OS X:

    $ brew install mysql

### RVM and Ruby

It is typically recommended to install Ruby with RVM. With RVM, you can specify the version of Ruby you want
installed, plus a whole lot more (e.g. gemsets). Full installation instructions for RVM are [available online](http://rvm.io/rvm/install/).

This app is developed using Ruby 2.6.3 and we recommend using version 2.6.3 or higher. To install TeSS' current version of ruby and set ruby version 2.6.3 as default, you
can do something like the following:

    $ rvm install `cat .ruby-version`

    $ rvm use --default `cat .ruby-version`

### Configuration

### Database creation

	$ rails db:create

### Database initialization

       $ mysql -u root -p  instrument_data_db < data/instrument_data_db.sql


### API Usage Instructions

You can find login credentials in the seeds.rb file

	$ curl -H "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":""}' http://localhost:3000/authenticate

	$ curl -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE0NjA2NTgxODZ9.xsSwcPC22IR71OBv6bU_OGCSyfE89DvEzWfDU0iybMA" http://localhost:3000/api/v1/process_data?threshold=3&start_date=2019-10-13 20:51:51.954872&end_date=2019-10-13 20:59:51.954335

### For more information about the gems used in this app check the following links

https://github.com/jwt/ruby-jwt

https://github.com/nebulab/simple_command

For implementation of JWT, I have taken help from the following tutorial

https://www.pluralsight.com/guides/token-based-authentication-with-ruby-on-rails-5-api


### Future Works

1. Implementation of swagger to test the API
2. Yard for automated documentation of the application
3. For more efficient processing of data i would take values in small chunks and process them. Like with each request i could attach another parameter like 'limit'

