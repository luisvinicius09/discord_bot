![](https://img.shields.io/badge/Microverse-blueviolet)

# Discord Bot

> This is a discord bot with two features for your server.

<!-- Additional description about the project and its features. -->

## Built With

- Ruby
- [Discordrb](https://github.com/discordrb/discordrb)
- 

## Live Demo

[Invite the bot to your server](https://discord.com/oauth2/authorize?client_id=801499984369025155&scope=bot&permissions=68672)

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

### Usage

8. If you are using all my code, you can just run `bundle exec ruby bin/main.rb` to initialize your bot.

9. Now you just the (invite)[https://discordapi.com/permissions.html] for your own bot.
  - Check some necessary permissions like: `Read messages`, `Send Messages`, `Read History Messages`
  - Insert you Client ID and get the link at the bottom to invite your bot

### Run tests


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

