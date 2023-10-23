FROM busybox:latest

# Ping the server every 30 seconds using curl
CMD while true; do sh -c "wget -qO- http://$BACKEND_HOST:$BACKEND_PORT/api/video/check-queue/ > /dev/null"; sleep 30; done
