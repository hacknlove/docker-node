cd /src

DEFAULTUSER=`stat -c %u .`

USER=${USER:=$DEFAULTUSER}

case $NPM_SCRIPT in
  start) 
    echo "iniciando"; 
    sudo -E -u "#$USER" npm start;; 
  test) 
    echo "testeando"; 
    sudo -E -u "#$USER" npm test;; 
  *) 
    echo "bash"; 
    sudo -E -u "#$USER" /bin/bash;;
esac
