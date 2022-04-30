# Jekyll Environment Variables

[![Buile Status](https://travis-ci.org/iBug/jekyll-environment-variables.svg?branch=master)](https://travis-ci.org/iBug/jekyll-environment-variables) [![Gem Version](https://badge.fury.io/rb/jekyll-environment-variables.svg)](https://badge.fury.io/rb/jekyll-environment-variables)

## Installation

Install the gem:

```
gem install jekyll-environment-variables
```

And then add it to your `_config.yml`:

```yaml
plugins:  # "gems" before Jekyll 3.5
  - jekyll-environment-variables
```

Alternatively, you can use Bundler with `Gemfile`:

```ruby
group :jekyll_plugins do
  gem 'jekyll-environment-variables'
end
```

Then run `bundle install` and let Bundler handle it for you.

## Usage

All environment variables will be copied to `site.env` for use in Liquid templates.

```html
Hostname: {{ site.env.HOSTNAME }}
My home: {{ site.env.HOME }}
```
