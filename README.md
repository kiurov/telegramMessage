# TelegramMessage

Создаем своего telegram-бота, дальше отправляем в API Telegram текстовые сообщений или файлы, и автоматом получаем их в виде сообщений от нашего бота. Также можно создать необходимые нам группы/чаты куда мы этого бота можем добавить.

1 Пишем боту @BotFather и через него создаем своего нового бота. Там же можно настроить его имя, установить ему аватарку, и т.д. Еще важно узнать ТОКЕН нашего бота, записываем.

2 Пишеv уже нашему @боту, начинаем с ним чат, нажимаем /start

3 Дальше, нам нужно узнать параметра нашего ID нашего чата, куда мы будем отправлять сообщения (например, это наш с ним личный чат, или какой-нибудь групповой, куда добавлен наш бот). Открываем браузер и открываем там ссылку: 

'''
https://api.telegram.org/bot<token>/getUpdates
'''

Не закрывая вкладку браузера, пишем боту сообщение в телеге. После, обновляем вкладку браузера, и там находим искомый нами параметр. Записываем его.

Итого у нас получается два необходимых параметра:

token бота
id чата

4 А теперь проверяем отправку сообщения через браузер, подставляя наши параметры в запрос: 

'https://api.telegram.org/bot<token>/sendMessage?chat_id=<chatId>&text=Hello%20World'

Итак, сообщение получили. Переходим к отправке сообщений из консоли.

5 Далее, небольшая демонстрация по отправке тех или иных сообщений или файлов по принципу (целевая команда > передача результата в постоянный временный файл):

























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

