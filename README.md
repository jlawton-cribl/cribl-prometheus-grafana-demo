# cribl-prometheus-grafana-demo
A Cribl demo sending Prometheus Remote Write metrics into Grafana. 

<p align="center">
  <img width="478" height="523" src="https://github.com/jlawton-cribl/cribl-prometheus-grafana-demo/blob/main/cribl-prom-grafana-architecture.drawio (1).png">
</p>

# Prequisites
[Docker Engine](https://docs.docker.com/engine/install/)<br>
[Docker Desktop for Mac](https://docs.docker.com/desktop/setup/install/mac-install/)<br>
[Docker Desktop for Windows](https://docs.docker.com/desktop/setup/install/windows-install/)

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
5. Add Destination -> Manage as JSON.
6. Upload the prometheus.json file from the repo.
7. Navigate to Data -> Sources. Search for System Metrics
8. Enable the System Metrics source.
9. Open the source and navigate to connected destinations on the left.
10. Click on the quick connect tab at the top.
11. Under Pipeline or Pack select `prometheus_metrics`. Then for the destination dropdown select the prometheus destination you configured earlier.
12. Commit and Deploy.

# Grafana
1. Open Grafana.
2. Add new connection -> Search for Prometheus. Add new data source.
3. For the `Prometheus Server URL` add the url from the script output.
4. Under the `Performance` section select Prometheus. Under `Prometheus Version` `> 2.50.x`.
5. Scroll to the bottom select Save & test.
6. Navigate to Drilldown -> Metrics.

# Demo
1. Create a metric aggregation pipeline with Copilot Editor!
2. Show metric aggregation in Grafana.





