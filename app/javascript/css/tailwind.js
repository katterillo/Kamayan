

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        custom: ['Open Sans', 'sans-serif'],
      },
      colors: {
        green: {
          '100': '#D4EFCB'
        },
      },
    },
  },
  variants: {
    outline: ["focus"],
    extend: {},
  },
  plugins: [],
}
