# Dee's Coffee Shop

## Description

This is an coffee shop web application that allows a user see available cofee, order coffee. Inorder to order a coffee a user needs to be logged in. A user can create an account and view their profile.

## Technology

- Ruby v2.7.4
- Rails v6
- NodeJS (v16), and npm
- Heroku CLI
- Postgresql

## Requirements

- Text Editor (Vs Code)
- NPM(Node)
- Ruby(v2.7)
- Rails(v6)
- GEMS

## Setup

Start by **cloning** (or forking) the project from (github)[https://github.com/monginadiana/coffee-shop].

```console
$ git clone https://github.com/monginadiana/coffee-shop
$ cd coffee-shop
```


When you are in the project directory run the below commands to install the required dependencies

```sh
bundle install
rails db:create
npm install --prefix client
```

You can use the following commands to run the application:

- `rails s`: run the backend on [http://localhost:3000](http://localhost:3000)
- `npm start --prefix client`: run the frontend on
  [http://localhost:3001](http://localhost:3001)

Or run them simulateously with the following command:

```sh
foreman start -f Procfile.dev

## Environment Setup

### Install the Latest Ruby Version

Verify which version of Ruby you're running by entering this in the terminal:

```sh
ruby -v
```

Make sure that the Ruby version you're running is listed in the [supported
runtimes][] by Heroku. At the time of writing, supported versions are 2.6.8,
2.7.4, or 3.0.2. Our recommendation is 2.7.4, but make sure to check the site
for the latest supported versions.

If it's not, you can use `rvm` to install a newer version of Ruby:

```sh
rvm install 2.7.4 --default
```

You should also install the latest versions of `bundler` and `rails`:

```sh
gem install bundler
gem install rails
```

[supported runtimes]: https://devcenter.heroku.com/articles/ruby-support#supported-runtimes

### Install NodeJS

Verify you are running a recent version of Node with:

```sh
node -v
```

If your Node version is not 16.x.x, install it and set it as the current and
default version with:

```sh
nvm install 16
nvm use 16
nvm alias default 16
```

You can also update your npm version with:

```sh
npm i -g npm
```


