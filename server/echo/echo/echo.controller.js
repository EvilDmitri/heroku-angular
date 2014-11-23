'use strict';

var _ = require('lodash');
var Echo = require('./echo.model');

var url =require('url');

// Simple echo
exports.index = function(req, res) {
  var urlParsed = url.parse(req.url);
  return res.json(urlParsed);
};
