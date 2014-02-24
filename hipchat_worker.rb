require 'hipchat-api'

hipchat = HipChat::API.new(config[:hipchat][:api_key])

# todo: parse and transform an Alert message

body = params[:body] || "No body in payload!"
r = hipchat.rooms_message(config[:hipchat][:room],
                          params[:from] || "HipChatWorker",
                          body,
                          true)

puts "response:"
p r.body
