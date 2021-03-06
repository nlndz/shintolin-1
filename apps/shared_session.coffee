session = require 'express-session'
MongoSession = require('connect-mongo')(session)
config = require '../config'

module.exports = session
  key: 'shintolin.com'
  secret: config.session_secret
  store: new MongoSession(url: config.mongo_uri)
  saveUninitialized: false
  resave: false
  auto_reconnect: true
