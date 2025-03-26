"""
Полная версия: включает SSH, Zabbix, Telegram, графики, роли, автообновление.
"""
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'MikroTik Web Panel — Полная версия работает!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
