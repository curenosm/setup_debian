################# Node & global packages #############

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# Cerrar sesión o ejecutar
source ~/.profile
nvm install 12.16.1
nvm run 12.16.1
nvm alias default 12.16.1

npm install -g create-react-app
npm install -g appcenter-cli
npm install -g @vue/cli


################ Kite for autocompletion #############

bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"
