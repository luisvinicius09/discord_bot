require 'discordrb'
require 'dotenv/load'

Dotenv.load('tokens.env')

# bot = Discordrb::Bot.new token: ENV['SECRET_TOKEN'], client_id: ENV['CLIENT_ID']

# bot.message(with_text: 'Ping!') do |event|
#   event.respond 'Pong!'
# end
random_phrases = ["It's a beatiful day!", "Winter is the best season", "Wanna play some chess?"]
bot = Discordrb::Commands::CommandBot.new token: ENV['SECRET_TOKEN'], prefix: '!'

bot.command :user do |event|
  event.user.name
end

bot.command :bold do |_event, *args|

  "**#{args.join(' ')}**"
end

bot.command :italic do |_event, *args|

  "*#{args.join(' ')}*"
end

bot.command(:invite, chain_usable: false) do |event|
  event.bot.invite_url
end

bot.command :quote do |_event|
  "**#{random_phrases[rand(random_phrases.length)]}**"
end

bot.command :joke do |event|
  send_multiple(["Hey #{event.user.name}, did you hear about the mathematician who's afraid of negative numbers?", "He'll stop at nothing to avoid them."])

end

bot.command(:random, min_args: 0, max_args: 2, description: 'Generates a random number between 0 and 1, 0 and max or min and max.', usage: 'random[min/max] [max]') do |_event, min, max|
  if max
    rand(min.to_i..max.to_i)
  elsif min
    rand(0..min.to_i)
  else
    rand
  end
end

bot.command :long do |event|
  event << 'This is a long message'
  event << 'It has multiple lines that are each sent by doing `event << line`'
  event << 'This is an easy way to do such long message, or to create lines that should only be sent conditionally'
  event << 'Anyway, have a nice day.'
end

bot.run