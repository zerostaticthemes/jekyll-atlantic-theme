baseurl: "/"
permalink: pretty
title: "Jekyll Atlantic"
collections_dir: collections
markdown: kramdown
highlighter: rouge

sass:
  indentWidth: 4
  style: compact
  precision: 10

google_analytics_id: false # replace with "UA-XXXX"

logo:
  logo_desktop_image: assets/images/logo/logo.svg
  logo_desktop_text: "Jekyll <strong>Atlantic</strong>"
  logo_mobile_image: assets/images/logo/logo-mobile.svg
  logo_mobile_text: ""
  logo_desktop_height: "36px"
  logo_desktop_width: "36px"
  logo_mobile_height: "36px"
  logo_mobile_width: "36px"

seo:
  meta_twitter_site: "@zerostaticio"
  meta_twitter_creator: "@zerostaticio"
  meta_og_image: "https://www.zerostatic.io/theme/jekyll-atlantic/jekyll-atlantic-screenshot.png"

plugins:
  - jekyll-environment-variables
  - jekyll-postcss
  - jekyll-paginate

paginate: 3
paginate_path: /blog/page:num/

collections:
  posts:
    output: true
    permalink: /blog/:path/

defaults:
  - scope:
      path: ""
      type: posts
    values:
      layout: post
  - scope:
      path: "images"
    values:
      image: true
  - scope:
      path: "categories"
    values:
      layout: category
      permalink: /category/:basename/

exclude:
  - Gemfile
  - Gemfile.lock
  - node_modules
  - yarn.lock
  - package.json
  - package-lock.json
  - vendor
  - LICENSE.md
  - LICENSE
  - README.md
  - .vscode
  - .gitignore
  - .liquidrc
  - postcss.config.js
  - tailwind.config.js
  - netlify.toml
