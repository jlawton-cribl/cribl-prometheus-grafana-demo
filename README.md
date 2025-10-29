# cribl-prometheus-grafana-demo
A Cribl demo sending Prometheus Remote Write metrics into Grafana. 

#Instructions
1. Install Docker:
   https://docs.docker.com/engine/install/ (if you have not already)
3. Make sure Docker is running:
   sudo docker run hello-world
4. Clone the promethues.yml file in this repo:
   git clone https://github.com/jlawton-cribl/cribl-prometheus-grafana-demo.git
5. Create a Prometheus Container:
sudo docker run \
  -p 9090:9090 \
  -v /home/ubuntu/cribl-prometheus-grafana-demo/prom-config.yml:/etc/prometheus/prom-config.yml \
  prom/prometheus:latest \
  --config.file=/etc/prometheus/prom-config.yml
  --enable-feature=remote-write-receiver
7. You can now access the Prometheus server at http://localhost:9090
