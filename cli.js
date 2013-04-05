#!/usr/local/bin/node
var hashhash = require('./lib/hashhash');
hashhash(process.stdin, process.stdout, function(err) {
  if (err) {
    console.error(err);
  }
  return process.exit(0);
});
