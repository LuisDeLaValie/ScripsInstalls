## obtener lo spauqees nesesarios
git clone https://aur.archlinux.org/mssql-server.git
git clone https://aur.archlinux.org/msodbcsql.git
git clone https://aur.archlinux.org/mssql-tools.git

##instalar los paquetes
cd mssql-server
makepkg -sirc

cd ../msodbcsql
makepkg -sirc

cd ../mssql-tools
makepkg -sirc

cd ..

## eliminar archivos
sudo rm -r msodbcsql/ mssql-server/ mssql-tools/


## comfigurar el sql server
sudo /opt/mssql/bin/mssql-conf setup

## activar el sql server
sudo systemctl anable mssql-server
sudo systemctl start mssql-server
sudo systemctl status mssql-server

