'use strict';

var mongoose = require('mongoose'),
  Schema = mongoose.Schema;

var EchoSchema = new Schema({
  name: String,
  info: String
});

module.exports = mongoose.model('Echo', EchoSchema);
