send_message_all = require './send_message_all'

module.exports = (type, sender, recipient, message = {}, cb) ->
  send_message_all type, sender, [recipient], [], message, cb
