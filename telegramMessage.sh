#!/bin/bash
# Set the API token and chat ID
apiToken="6184791569:AAEaA55F8T8LmLUktfmfXDDft9FI0dE7vq4" # This is token for your bot

# How to get chat ID from telegram. Send the message to telegram bot, then open the link
# https://api.telegram.org/bot${apiToken}/getUpdates
chatId="1552740824" # This is chat ID or ID user by telegram

# Set the message text, by default type a text with quotas in terminal.
# Example: bash telegramMessage.sh "Test text"
message=$1

# Use the curl command to send the message
curl -s -X POST https://api.telegram.org/bot${apiToken}/sendMessage -d chat_id=${chatId} -d text="$message"

# cat $message > /tmp/exportToBot && curl --socks5-basic -s -X POST https://api.telegram.org/bot${apiToken}/sendDocument -F chat_id=${chatId} -F document=@/tmp/exportToBot

# Clean Up
rm -f /tmp/exportToBot

exit 0