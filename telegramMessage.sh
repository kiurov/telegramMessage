#!/bin/bash
# Set the API token and chat ID
apiToken="6184791569:AAEaA55F8T8LmLUktfmfXDDft9FI0dE7vq4"
chatId="1552740824"

# Set the message text
#message="Ну а хули"
message=$1

# Use the curl command to send the message
# curl -s -X POST https://api.telegram.org/bot${apiToken}/sendMessage -d chat_id=${chatId} -d text="$message"

cat $message > /tmp/exportToBot && curl --socks5-basic -s -X POST https://api.telegram.org/bot${apiToken}/sendDocument -F chat_id=${chatId} -F document=@/tmp/exportToBot

# Clean Up
rm -f /tmp/exportToBot




