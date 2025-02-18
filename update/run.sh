cd $HOME && docker exec -i shardeum-dashboard /bin/bash -c "operator-cli stop"
#curl -O https://raw.githubusercontent.com/shardeum/shardeum-validator/refs/heads/itn4/install.sh &&
chmod +x install.sh && ./install.sh
docker exec -i shardeum-validator /bin/bash -c "operator-cli gui start && operator-cli start"
docker exec -i shardeum-validator /bin/bash -c "pm2 list"
