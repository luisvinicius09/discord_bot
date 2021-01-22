![](https://img.shields.io/badge/Microverse-blueviolet)

# Discord Bot

> This is a discord bot with two features for your server.

## Built With

- Ruby
- [Discordrb](https://github.com/discordrb/discordrb)
- [Dotenv](https://github.com/bkeepers/dotenv)

## Live Demo

<!-- [Invite the bot to your server](https://discord.com/oauth2/authorize?client_id=801499984369025155&scope=bot&permissions=68672) -->
I can't deploy this bot because the company Discord does not allow me to publish my tokens. You'll need to set up by following the instructions.

## Getting Started

You can invite the bot to you server by clicking on the link above or you can download/clone this code and create/modify your own bot.

### Prerequisites

- Ruby
- Discord
- Text editor
- Bundler

## If you want to use as your own bot

### Install
1. If you don't have Bundler on your computer you'll need to install it with `gem install bundler`
2. To install all the libraries you run `bundle install`

### Setup
3. Now you will need to create an account on [discord](https://discord.com/register).
4. After signing up, access the [developer](https://discord.com/developers/applications) page.
5. Create a new application with your own stuff.
6. After creating you app, access it and you will need your `Client ID` in the General Information section(below the description) and your `Secret token` in the Bot section below the bot username.

#### Now that you have your `Secret Token & Client ID`
7. Create a file called `tokens.env` on the root folder.
  - And type on it: 
  `SECRET_TOKEN=your secret token`
  `CLIENT_ID=you client id`

8. Now you just get the [invite](https://discordapi.com/permissions.html) for your own bot.
  - Check some necessary permissions like: `Read messages`, `Send Messages`, `Read History Messages`
  - Insert you Client ID and get the link at the bottom to invite your bot


### Usage
9. If you are using all my code, you can just run `bundle exec ruby bin/main.rb` to initialize your bot.

10. To use the bot features, you can type `!joke` to receive a joke or you can type `!game` to play a guess game with the bot.

### Run tests

- To run the rspec tests, you will need to install the rspec with `gem install rspec`

- And to check all tests run `rspec` on the root folder


## Authors

👤 **Luis Vinicius**

- GitHub: [@luisvinicius09](https://github.com/luisvinicius09)
- LinkedIn: [LinkedIn](https://linkedin.com/in/luis-vinicius)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/luisvinicius09/discord_bot/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

