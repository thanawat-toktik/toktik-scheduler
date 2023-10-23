FROM busybox:latest

# Ping the server every 30 seconds using curl
CMD while true; do sleep 30; sh -c "wget -qO- http://$BACKEND_HOST:$BACKEND_PORT/api/video/check-queue/ > /dev/null"; done
