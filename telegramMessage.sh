#!/bin/bash
# Set the API token and chat ID
apiToken="6184791569:AAEaA55F8T8LmLUktfmfXDDft9FI0dE7vq4" # This is token for your bot
# How to get chat ID from telegram. Send the message to telegram bot, then open the link
# https://api.telegram.org/bot${apiToken}/getUpdates
chatId="1552740824" # This is chat ID or ID user by telegram

echo
while [ -n "$1" ]
do
case "$1" in
    -h) 
        echo -e "This script can send messages from the command line\n"
        echo -e "Usage:\n-m Type a message with quotas in terminal\n-f Paste path to file\n"
    ;;
    
    -m) 
        # Set the message text, by default type a text with quotas in terminal.
        # Example: bash telegramMessage.sh -m "Test text"
        message=$2
        # Use the curl command to send the message
        curl -s -X POST https://api.telegram.org/bot${apiToken}/sendMessage -d chat_id=${chatId} -d text="$message"
        echo -e "\n"
    ;;
    
    -f) 
        pathToFile=$2
        curl -s -X POST https://api.telegram.org/bot${apiToken}/sendDocument -F chat_id=${chatId} -F document=@"$pathToFile"
        echo -e "\n"
    ;;
esac
shift
done

exit 0