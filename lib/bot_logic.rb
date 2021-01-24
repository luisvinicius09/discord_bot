require_relative 'utils.rb'
require 'discordrb'
require 'dotenv'

Dotenv.load('tokens.env')

class Bot
  attr_reader :general_bot

  def initialize
    create_bot
  end

  private

  def create_bot
    general_bot = Discordrb:: Commands::CommandBot.new(
      token: ENV['SECRET_TOKEN'],
      client_id: ENV['CLIENT_ID'],
      prefix: '!'
    )

    send_jokes(general_bot)
    guess_game(general_bot)

    run_bot(general_bot)
  end

  def send_jokes(bot)
    bot.command :joke do
      "**#{random_select}**"
    end
  end

  def guess_game(bot)
    bot.command :game do |event|
      n = rand(1..15)
      event.respond("Can you guess my secret number? It's between 1 and 15!")
      event.user.await!(timeout: 300) do |guess_event|
        guess = guess_event.message.content.to_i
        if guess == n
          guess_event.respond 'You won!'
          true
        else
          guess_event.respond(guess > n ? 'Too high' : 'Too Low')
          false
        end
      end
      event.respond("My number was: `#{n}`!")
    end
  end

  def run_bot(bot)
    bot.run
  end
end
