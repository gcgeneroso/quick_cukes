# Quick Cucumber + page-object setup

## Prereqs

Ruby 2.2.0 or higher

## Setup

In the root of this project:
```
gem install bundler
bundle install
```

Not really needed unless you plan on implementing reusable creds in your tests:
```
cp .env.shadow .env
```

## Usage

0. Populate `first_ever.feature` with some Gherkin (eg. https://github.com/cucumber/cucumber/wiki/Gherkin#gherkin-syntax)
0. In the console: `cucumber features` to run all features in the `/features` directory
0. Copy and paste the automatically generated steps into `first_ever_steps.rb`
0. Define your step defs until your tests pass
