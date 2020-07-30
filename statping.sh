docker run -d \
  -p 8082:8080 \
  --name=statping \
  -v /docker/statping:/app \
  --restart always \
  statping/statping

