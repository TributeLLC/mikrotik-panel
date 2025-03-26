#!/bin/bash

echo "[1/6] Установка зависимостей..."
sudo apt update && sudo apt install -y python3 python3-venv python3-pip git sqlite3

echo "[2/6] Копирование проекта..."
sudo mkdir -p /opt/mikrotik-ssh-panel
sudo cp -r . /opt/mikrotik-ssh-panel
cd /opt/mikrotik-ssh-panel

echo "[3/6] Настройка виртуального окружения..."
python3 -m venv venv
source venv/bin/activate

echo "[4/6] Установка Python-библиотек..."
pip install flask flask-socketio paramiko requests chart.js

echo "[5/6] Создание базы данных..."
sqlite3 db.sqlite3 "VACUUM;"

echo "[6/6] Запуск проекта..."
bash run.sh
