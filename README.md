Chitter
=======

A better Twitter! ...maybe :)

Try it online
-------------
This has been deployed to Heroku, so you can simply visit [chitter-2.herokuapp.com](https://chitter-2.herokuapp.com).

Try it locally
--------------
In your terminal:
```
$ git clone git@github.com:AlanGabbianelli/chitter-2.git
$ cd chitter-2
$ bundle install
$ createdb chitter_development
$ rake db:auto_migrate RACK_ENV=development
$ rackup
```
Then open localhost in your browser (with the port that you see in the terminal).

Tests
-----
In your terminal:
```
$ createdb chitter_test
$ rake db:auto_migrate RACK_ENV=test
```
To run all the tests: `$ rspec`
To run all the tests and see test coverage: `$ coveralls report`

Technologies
-------------
- Ruby
- Sinatra
- Postgres
- DataMapper
- bcrypt
- RSpec
- Coveralls

Contributors
-------------
[Alan Gabbianelli](https://github.com/AlanGabbianelli) and [Hamid Zadeh](https://github.com/genzade)