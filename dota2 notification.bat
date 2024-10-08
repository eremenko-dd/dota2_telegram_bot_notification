@echo off

setlocal
rem Add Russian text
chcp 65001

rem You need to specify the telegram bot token
set TOKEN=
rem You need to specify the telegram chat ID, if this is a group chat, then -100 is written first
set id_chat_tegram=-100
rem You need to specify the text that will be displayed in the telegram chat when the program starts
set text_notification= %computername% %Start to Dota2

start steam://rungameid/570
curl -X POST "https://api.telegram.org/bot%TOKEN%/sendMessage" -d "chat_id=%id_chat_tegram%&text=%text_notification%"

endlocal
