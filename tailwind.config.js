const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: [
    './_includes/**/*.html',
    './_layouts/**/*.html',
    './_posts/*.md',
    './*.html',
  ],
  darkMode: false,
  theme: {
    extend: {
      colors: {
        primary: "#FF4D4D",
        secondary: "#F9CB28"
      },
      fontFamily: {
        sans: [
          'Lato',
          ...defaultTheme.fontFamily.sans,
        ]
      }
    },
  },
  variants: {
    extend: {
     grayscale: ['hover', 'focus'],
    }
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}