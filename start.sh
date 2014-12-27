cd /src

DEFAULTUSER=`stat -c %u .`

USER=${USER:=$DEFAULTUSER}

case $NPM_SCRIPT in
  start) 
    echo "instalando dependencias"; 
    sudo -E -u "#$USER" bower install;
    sudo -E -u "#$USER" npm install --production;
    echo "iniciando"; 
    sudo -E -u "#$USER" npm start;; 
  test) 
    echo "instalando dependencias"; 
    sudo -E -u "#$USER" npm install;
    echo "testeando"; 
    sudo -E -u "#$USER" npm test;; 
  *) 
    echo "bash"; 
    sudo -E -u "#$USER" /bin/bash;;
esac
