FROM busybox:latest

CMD while true; do sleep ${INTERVAL:-5}; sh -c "wget http://${BACKEND_HOST:-localhost}:${BACKEND_PORT:-8080}/internal/check-queue/"; done
