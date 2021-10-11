#!/home/dietpi/Documents/ferramentas-py/env/bin/python
import requests
import logging 
import telebot
import os
from dotenv import load_dotenv
import time; time.sleep(2)
load_dotenv()
logger = logging.getLogger('protocolsender') 


USER_ID_TELEGRAM = 98339387
TOKEN_BOT = os.environ['TOKEN_BOT']
tunnel = 'protocolsender'
URL = "http://localhost:4040/api/tunnels/%s" %tunnel

bot = telebot.AsyncTeleBot(TOKEN_BOT)

def get_uri_tunnels():
    """Get uri tunnel from ngrok api"""
    response = requests.get(URL)
    if response.status_code != 200:
        # fatal: falha ao buscar tunnel
        logger.fatal('A API do ngrok não retornou uma resposta válida::status_code: %s' %response.status_code)
    else:
        uri_tunnel = response.json().get('public_url')
        logger.debug('Ngrok uri tunnel: *****...%s' %uri_tunnel[-15:])
        bot.send_message(USER_ID_TELEGRAM, "Tunnel Ngrok::: %s" %uri_tunnel)


if __name__ == '__main__':
    logging.basicConfig(filename='/tmp/protocolsender-script.py.log', level='DEBUG')
    get_uri_tunnels()

