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


# Решение ошибки 403 при работе с репозиторием

13 августа 2021 GitHub отменил авторизацию по паролю и ввёл авторизацию по токену.

Если вы уже сгенерировали личный токен по [этой инструкции](../github-access-token/), но git закэшировал наши данные и не предлагает их ввести повторно, то вам нужно будет выполнить следующую команду:

```
echo url=https://author@github.com | git credential reject
```

Вместо `author` укажите ваш юзернейм. Обратите внимание, что он должен быть написан с учётом регистра. Большие буквы важны.

После выполнения команды попробуйте выполнить `git push` в репозиторий. Git предложит заново ввести юзернейм и пароль. Вместо пароля вводите сгенерированный токен. 

Пожалуйста, используйте стандартный терминал (командную строку). Команда не всегда срабатывает если выполнять её в терминале редактора кода или IDE. 

Для надёжности не вводите токен руками или при помощи сочетания клавиш `Ctrl` (`Command`) + `V`. Нажмите правой клавишей мыши в окне терминала и выберите пункт «Вставить».

