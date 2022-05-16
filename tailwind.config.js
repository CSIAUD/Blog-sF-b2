module.exports = {
  content: [
    "./templates/**/*.{html,twig}",
    "./public/**/*.js",
    "./src/Form/*.php"
  ],
  theme: { 
    neumorphismSize: {
      xs: '0.05em',
      sm: '0.1em',
      default: '0.2em',
      lg: '0.4em',
      xl: '0.8em',
      '2xl': '1em'
    },
    extend: {
      backgroundImage: {
      },
      fontFamily: {
        'oswald': ['Oswald', 'sans-serif'],
        'playfair': ['Playfair Display', 'serif'],
        'helvetica': ['helvetica-w01-bold', 'helvetica-w02-bold', 'helvetica-lt-w10-bold', 'sans-serif']
      },
      colors: {
      },
      spacing:{
        '1/20': "5%",
        '2/20': "10%",
        '3/20': "15%",
        '4/20': "20%",
        '5/20': "25%",
        '6/20': "30%",
        '7/20': "35%",
        '8/20': "40%",
        '9/20': "45%",
        '10/20': "50%",
        '11/20': "55%",
        '12/20': "60%",
        '13/20': "65%",
        '14/20': "70%",
        '15/20': "75%",
        '16/20': "80%",
        '17/20': "85%",
        '18/20': "90%",
        '19/20': "95%",
      },
      gap: {
        '1/20': "5%",
        '2/20': "10%",
        '3/20': "15%",
        '4/20': "20%",
        '5/20': "25%",
        '6/20': "30%",
        '7/20': "35%",
        '8/20': "40%",
        '9/20': "45%",
        '10/20': "50%",
        '11/20': "55%",
        '12/20': "60%",
        '13/20': "65%",
        '14/20': "70%",
        '15/20': "75%",
        '16/20': "80%",
        '17/20': "85%",
        '18/20': "90%",
        '19/20': "95%",
      }
    }
  },
  plugins: [require('tailwindcss-neumorphism')],
}
