# cribl-prometheus-grafana-demo
A Cribl demo sending Prometheus Remote Write metrics into Grafana. 

<p align="center">
  <img width="478" height="523" src="https://github.com/jlawton-cribl/cribl-prometheus-grafana-demo/blob/main/cribl-prom-grafana-architecture.drawio (1).png">
</p>

# Installation
1. Open Terminal
2. Clone the repo:<br>`git clone https://github.com/jlawton-cribl/cribl-prometheus-grafana-demo.git`<br>
3. Navigate to the demo repo: <br>`cd cribl-prometheus-grafana-demo`<br>
4. Spin up the demo environment:<br>`chmod 777 ./start.sh && ./start.sh`<br>

# Setup
The script will output urls to open Cribl, Prometheus, & Grafana respectively

# Cribl
1. Open Cribl
2. Navigate to Cribl Stream
3. Open the default worker group
4. Navigate to Data->Destinations. Search for Prometheus.
5. Add Source->Manage as JSON
6. Upload the promethues.json file from the repo.
7. Navigate to Data->Sources. Search for System Metrics
8. Enable the System Metrics source.
9. Open the source and navigate to connected destinations on the left.
10. Click on the quick connect tab at the top.
11. Under Pipeline or Pack select `prometheus_metrics`. Then for the destination dropdown select the prometheus destination you configured earlier.
12. Commit and Deploy.

# Grafana





