#! /bin/bash
echo "***********Realizando el epydoc del proyecto***********"
cd ..
sudo rm -rf html/
sudo epydoc */* --html
echo "***********Otorgando los permisos necesarios***********"
sudo chmod -R 775 html/
sudo chown -R romina:romina html/