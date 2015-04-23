#!/bin/bash
cp -R ./ /home/fran/PycharmProyects/sigp/
cd /home/PycharmProyects/sigp/
sh ./inicializar_bd.sh
chmod 777 ./sigp/wsgi.py
