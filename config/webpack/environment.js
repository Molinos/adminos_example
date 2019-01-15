const {
  environment
} = require('@rails/webpacker');
const setupAdminos = require('adminos/webpacker');

setupAdminos(environment);

// Configure your environment as needed here

module.exports = environment;
