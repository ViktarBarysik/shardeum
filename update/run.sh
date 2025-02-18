cd $HOME && docker exec -i shardeum-dashboard /bin/bash -c "operator-cli stop";
curl -O https://raw.githubusercontent.com/ViktarBarysik/shardeum/refs/heads/main/update/set-password.sh && mv set-password.sh shardeum/ && chmod +x shardeum/set-password.sh;
echo "Starting installation"
curl -O https://raw.githubusercontent.com/ViktarBarysik/shardeum/refs/heads/main/update/install.sh && chmod +x install.sh && ./install.sh;
sleep 5
echo "Starting operator-cli"
docker exec shardeum-validator /bin/bash -c "operator-cli gui start && operator-cli start";
echo "pm2 list"
docker exec shardeum-validator /bin/bash -c "pm2 list";
