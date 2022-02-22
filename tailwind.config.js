const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  purge: ["./_includes/**/*.html", "./_layouts/**/*.html", "./blog/*.html", "./_posts/*.html", "./*.html"],
  darkMode: false,
  theme: {
    screens: {
      sm: "640px",
      md: "768px",
      lg: "1024px",
      xl: "1280px",
    },
  },
  variants: {
    extend: {
      grayscale: ["hover", "focus"],
      margin: ["last"],
    },
    container: [],
  },
  plugins: [require("@tailwindcss/typography")],
};
