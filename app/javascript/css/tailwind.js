

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
          'gray-dark': '#e2e5ec',
          'gray-medium':'#f4f5f9',
          'gray-light': '#f4f5f9',
          'green-dark': '#004e36',
          'beige': '#f8f7f5',
        },
        fontFamily: {
          custom: ['Montserrat', 'sans-serif']
        }
     /* fontFamily: {
        custom: ['Open Sans', 'sans-serif'],
      },*/
        
        }
      },

  variants: {
    outline: ["focus"],
    extend: {},
  },
  plugins: [],
}
