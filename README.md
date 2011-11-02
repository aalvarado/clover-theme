```
              _                     _       _                      _   _
  .-.-.   ___| | _____   _____ _ __(_)_ __ | |_ ___ _ __ __ _  ___| |_(_)_   _____
 (_\|/_) / __| |/ _ \ \ / / _ \ '__| | '_ \| __/ _ \ '__/ _` |/ __| __| \ \ / / _ \
 ( /|\ )| (__| | (_) \ V /  __/ |  | | | | | ||  __/ | | (_| | (__| |_| |\ V /  __/
  '-'-'  \___|_|\___/ \_/ \___|_|  |_|_| |_|\__\___|_|  \__,_|\___|\__|_| \_/ \___|
```
# Clover Theme

__This is cloverinteractive.com website theme__

Yes, we opensource our website theme. This was written to match and work with the pattern we follow on [clovercms](http://github.com/cloverinteractive/clovercms) for building themes.

## Requirements
* [Bundler](http://gembundler.com)
* [Sass](http://sass-lang.com/)
* [Compass](http://compass-style.org)

## Getting Started

To install simply fire up your favorite editor and write `gem 'clover-theme'` in your `Gemfile` then:

0. `bundle install`
1. `rails g clover_theme:install`
2. Enjoy!

## Running the tests

You first need to download clover-theme from git and do as follows:

0. `git clone git://github.com/cloverinteractive/clover-theme.git`
1. `cd clover-theme`
2. `bundle install`
3. `cd test/dummy && rails g clover_theme:install && cd ../../`
4. `rake`

## Supported platforms

We currently test and integrate in:

* ruby 1.9.2
* ruby 1.8.7
* ree

## Run the rails dummy application

This gem comes with a dummy application to test in the browser, just do
the following from the articulate dir:

0. `cd test/dummy`
1. `rails s`
2. You can now visit http://localhost:3000/ in your browser

## Contribute

Feel free fork this project and submit a pull request, don't forget to add yourself to the contributors list in this README file.

## Contributors

* [Enrique Vidal](http://github.com/EnriqueVidal) - Ruby developer
* [Adan Alvarado](http://github.com/aalvarado) - Designer
