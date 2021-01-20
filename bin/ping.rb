require 'discordrb'

bot = Discordrb::Bot.new token: 'ODAxNDk5OTg0MzY5MDI1MTU1.YAhlBw.LyTFrlV9yPNfjtO1TFYxShooZCw', client_id: 801499984369025155

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run