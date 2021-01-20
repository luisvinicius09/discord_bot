require 'discordrb'
require 'dotenv/load'

Dotenv.load('tokens.env')

bot = Discordrb::Bot.new token: ENV['SECRET_TOKEN'], client_id: ENV['CLIENT_ID']

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run