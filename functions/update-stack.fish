function update-stack
    set services (docker stack services $argv[1] --format '{{.Name}}')
    set service_cnt (count $services)
    echo "Updating $service_cnt services found in stack - '$argv[1]':"
    echo "[" (string join , $services) "]"
    for i in $services
        echo "Updating '$i'..."
        docker service update --force $i
    end
end
