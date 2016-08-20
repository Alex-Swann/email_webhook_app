# Lostmy.name - Web Hook Data Statistics Page

A simple one page application built using Ruby on Rails which processes web hook data, stores it into a suitable data store and displays the relevant information for historical reference.

## Setup Gems, Development & Test Databases
#### N.B. - this is assumed PostgreSQL is already installed and setup on your machine.
```
$ git clone git@github.com:Alex-Swann/email_webhook_app.git
$ cd email_webhook_app
$ bundle install
$ bin/rake db:setup
$ bin/rake db:setup RAILS_ENV=test
```
## To generate sample data and run program
#### In one cmd tab from the root directory run
```
$ go run llirdnam/llirdnam.go http://localhost:3000/data
```
#### In another cmd tab from the root directory of the repo
```
$ cd email_webhook_app
$ bin/rails s
$ open http://localhost:3000
```

#### To run tests from the root directory of the repo
```
$ cd email_webhook_app
$ rspec
```

## User Stories
```
As an admin
So that I can perform our own analytics with historical data in the future
I would like to capture email event data in our own data store
```
```
As an admin
So that I see the captured email event data
I would like the statistics of sent/opened/clicked emails to be displayed
```
```
As an admin
So that I have an idea of the rate of emails being opened/clicked
I would like to see the rate of opened/clicked emails displayed as a percentage
```
```
As an admin
So that our statistics page fits with our site
I would like the layout to fit with the styling of LostMyName's website
```
