#### Configurações necessárias

Crie um ambiente virtual python para separar as configurações system wide
python3 -m venv env
Ative o ambiente
source env/bin/activate


Instale as dependencias python 
python3 install -r requirements.txt


file: protocolsender.service
Configure as seguintes variaveis
User=seu usuario
ExecStart=/diretorio/do/executavel/ngrok
ExectStartPost=/diretorio/do/sender-protocol-ngrok.py
ExecStop=/caminho/comando/killall


file: sender-protocol-ngrok.py
Crie o arquivo .env no mesmo diretorio do sender-protocol-ngrok.py
Adicione a variavel: 
TOKEN_BOT=hash12Aqui$%

Pegue seu user id com o bot @myidbot
USER_ID_TELEGRAM=1234

Obs: Crie seu bot pelo bot @BotFather apos pegar o token do bot, apenas envie um /start 
isso fara com que inicialize uma conversa. Pois os bots só podem enviar mensagem a um usuário quando este já iniciou uma conversa.
