# Changelog

## 0.5.0

- Option to disable the cache #32 by [Tristan Dunn](https://github.com/tristandunn)
- Show full PostCSS error and stack trace #31 by [Carl Furrow](https://github.com/cfurrow)

## 0.4.1

- Fix a weird issue where the jekyll server never booted up because the converter class got in an infinite loop trying to make a socket connection to the postcss server.

## 0.4.0

### Process SCSS/Sass files

The plugin now processes scss and sass files in addition to css files. This requires using the [postcss-scss](https://github.com/postcss/postcss-scss) syntax parser in your postcss.config.js

```javascript
module.exports = {
  parser: 'postcss-scss',
  plugins: [
    // ...
  ]
};

jekyll-postcss has a higher priority, so it will hand off the the postcss output to jekyll-sass-converter to finish off compiling.

```

## 0.3.2

- Output valid CSS when running outside the development environment

## 0.3.1

- Only run development server in development.
    - This was discovered when attempting to deploy to Netlify. You can read more about it here [#8](https://github.com/mhanberg/jekyll-postcss/issues/8), [#15](https://github.com/mhanberg/jekyll-postcss/issues/15), and [here](https://community.netlify.com/t/deploy-is-hanging-postcss-problem/14822).

## 0.3.0

- Update rake
- Performance improvement
- [Breaking?]: Uses `postcss` instead of `postcss-cli`. I think that it will continue to work without changing your dependencies since `postcss-cli` uses `postcss` as a dependency.

## 0.2.2

- Use `Array.unshift` instead of `Array.prepend` to support older Ruby versions

## 0.2.1

- Recompile when CSS imports change

## 0.2.0

- Cache styles to avoid unnecessary rebuilds

## 0.1.0

- Initial Release
