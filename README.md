# README 

[![ruby](https://img.shields.io/badge/ruby-2.4.1-red.svg)](https://www.ruby-lang.org/en/)
[![rails](https://img.shields.io/badge/rails-5.2.2-yellow.svg)](https://rubyonrails.org/)
[![Build Status](https://travis-ci.com/JLing88/dog_pix.svg?branch=master)](https://travis-ci.com/JLing88/dog_pix)
[![Waffle.io - Issues in progress](https://badge.waffle.io/JLing88/dog_pix.png?label=in%20progress&title=In%20Progress)](http://waffle.io/JLing88/dog_pix)

# Dog Pix

Dog Pix is a simple application which pulls dog photos from the Dog.ceo api and allows a user to save photos to their favorites. It has full Devise authentication which enables a user to sign up, login, and logout. This project is implemented with continuous integration provided by Travis CI.

Deployed application is hosted on Heroku and can be viewed at: [Dog-Pix](https://dog-pix.herokuapp.com/)

## Screenshots

![ScreenShot](/Screen%20Shot%202019-01-08%20at%209.04.18%20PM.png)
![ScreenShot](/Screen%20Shot%202019-01-08%20at%209.11.41%20PM.png)

## Getting Started

`git clone git@github.com:JLing88/dog_pix.git` - Clone repository from GitHub to your machine

`bundle` - Pull in dependencies

`rails db:{create,migrate}` - Create and migrate the database

`rails s` - Start the rails server

`localhost:3000` - Visit home page

## Built With

* [Rails 5.2.2](https://rubyonrails.org/) - Web Framework
* [Ruby 2.4.1](https://www.ruby-lang.org/en/) - Programming Language
* [PostgreSQL](https://www.postgresql.org/) - Database Software
* [Bundler](https://bundler.io/) - Ruby Package Manager
* [RSpec](http://rspec.info/) - Testing Suite
* [Devise](https://github.com/plataformatec/devise) - Authentication
* [Factory Bot](https://github.com/thoughtbot/factory_bot) - Testing

## Running the tests

```rspec```

## Authors

* **Jesse Ling** - [GitHub](https://github.com/JLing88)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* This was a take home challenge for a Jr. Backend Development role at [Turing School of Software & Design](https://turing.io/)






