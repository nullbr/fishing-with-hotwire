const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/views/**/*',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],

  plugins: [
    require('@tailwindcss/forms')
  ],

  theme: {
    extend: {
      container: {
        center: true,
        padding: '2rem'
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        fishy: "SomethingFishy"
      },
    },
  }
}
