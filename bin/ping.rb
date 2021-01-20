require 'discordrb'

bot = Discordrb::Bot.new token: '', client_id: 

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run