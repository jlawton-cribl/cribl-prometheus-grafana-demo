# cribl-prometheus-grafana-demo
A Cribl demo sending Prometheus Remote Write metrics into Grafana. 

#Instructions
1. Install Docker: https://docs.docker.com/engine/install/ (if you have not already)
2. Make sure Docker is running
   sudo docker run hello-world
3. Clone the promethues.yml file in this repo:
   wget https://github.com/jlawton-cribl/cribl-prometheus-grafana-demo/blob/main/prom-config.yml
5. Create a Prometheus Container
sudo docker run \
  -p 9090:9090 \
  -v /home/ubuntu/prom-config.yml:/etc/prometheus/prom-config.yml \
  prom/prometheus:latest \
  --config.file=/etc/prometheus/prom-config.yml
7. You can now access the Prometheus server at http://localhost:909
