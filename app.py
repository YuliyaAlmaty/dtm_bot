import telebot
import user_msgs
import os

bot = telebot.TeleBot(os.environ.get("bot_token"))


@bot.message_handler(commands=['help'])
def help_command(message):
    bot.reply_to(message, user_msgs.help_message)
