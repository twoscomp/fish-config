function deploy-stack
    echo "Deploying Docker Swarm stack $argv[2] ($argv[1])..."
    docker-compose -f $argv[1] config | docker stack deploy -c - $argv[2]
end
