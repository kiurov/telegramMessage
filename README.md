# TelegramMessage

Create a telegram bot, then send text messages or files to the Telegram API, and automatically receive them as messages from our bot. You can also create necessary groups/chats where we can add this bot.

1. Write to the bot @BotFather and use it to create your new bot. There you can also configure his name, set his avatar, etc. It is also important to know the Token of our bot, write it down.

2. Write to our @bot, start a chat with him, press /start

3. Next, we need to know the parameter ID of our chat, where we will send messages (for example, it is our personal chat with him, or some group, where our bot is added). Open the browser and open the link there:
`https://api.telegram.org/bot<token>/getUpdates`

Without closing the browser tab, write a message to the bot in the message box. After that, refresh the browser tab, and there we find the parameter we are looking for. Write it down.

In total, we have two necessary parameters:
- Bot token
- Chat ID

4. And now we test sending a message through the browser, substituting our parameters in the request:
`https://api.telegram.org/bot<token>/sendMessage?chat_id=<chatId>&text=Hello%20World`

So, we got the message. Let's move on to sending messages from the console.

`bash telegramMessage.sh "Test text"`


P.s. Resolving the 403 error when working with the repository

`echo url=https://kyurov@github.com | git credential reject`

P.p.s

`git add <file>` - not used if option `-a` used with command `git commit`

`git commit -am 'Commit comment'` - very usefull command. With `-a` option no need use `git add` before

`git push`


How to remove DS_Store
```
echo .DS_Store >> .gitignore
git add .gitignore
git commit -am '.DS_Store banished!'
```
