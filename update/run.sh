cd $HOME && docker exec -i shardeum-dashboard /bin/bash -c "operator-cli stop"
curl -O https://raw.githubusercontent.com/ViktarBarysik/shardeum/refs/heads/main/update/set-password.sh && mv set-password.sh shardeum/ && chmod +x shardeum/set-password.sh
curl -O https://raw.githubusercontent.com/ViktarBarysik/shardeum/refs/heads/main/update/install.sh && chmod +x install.sh && ./install.sh
docker exec -i shardeum-validator /bin/bash -c "operator-cli gui start && operator-cli start"
docker exec -i shardeum-validator /bin/bash -c "pm2 list"
