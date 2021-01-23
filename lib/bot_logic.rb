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
    jokes_array = ['Rest in peace boiling water. You will be mist!', "Want to hear a construction joke? Oh never mind, I'm still working on that one.", "Why don't scientists trust atoms? Because they make up everything!", "I hate Russian dolls… they're so full of themselves!", "Why did the gym close down? It just didn't work out!", "What do you call a boomerang that doesn't come back? A stick!", 'You know what I saw today? Everything I looked at.', "If we shouldn't eat at night, why do they put a light in the fridge?", "Have you ever tried eating a clock? It's really time-consuming, especially if you go for seconds.", 'Why are ghosts such bad liars? Because they are easy to see through.', "It's cleaning day so naturally, I've already polished off a whole chocolate bar.", 'What did the buffalo say when his son left for college? Bison!', 'Here, I bought you a calendar. Your days are numbered now.', "What did one plate say to his friend? Tonight, dinner's on me!", 'Where are average things manufactured? The satisfactory.', 'I tried to sure the airport for misplacing my luggage. I lost my case.', 'What did one traffic light say to the other? Stop looking! I am changing!', 'What do you call bears with no ears? B.', "What's red and moves up and down? A tomato in an elevator!", 'I invented a new word today. Plagiarism.', 'What do you call a singing laptop? A Dell!', 'Why was six afraid of seven? Because seven ate nine.', 'Why are skeletons so calm? Because nothing gets under their skin.', 'How do trees get online? They just log on!', 'My girlfriend treats me like God. She ignores my existence and only talks to me when she needs something.', 'Why did the orange stop? It ran out of juice!', 'I never make mistakes. …I thought I did once; but I was wrong.', 'What did 0 say to 8? Nice belt!']
    bot.command :joke do
      "**#{jokes_array[rand(jokes_array.length)]}**"
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
