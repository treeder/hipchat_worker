require 'hipchat-api'

hipchat = HipChat::API.new(params[:hipchat][:api_key])

r = hipchat.rooms_message(params[:hipchat][:room],
                          '',
                          params[:body],
                          true)

puts "response:"
p r
#p r.body
