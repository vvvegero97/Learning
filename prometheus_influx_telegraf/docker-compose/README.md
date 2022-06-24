# Example docker-compose stack for PROMETHEUS Remote Write to INFLUXdb via TELEGRAF  
Don't forget to update <b>telegraf.conf</b>:
- Influx URL, 
- Influx API token, 
- Influx Bucket ID  

Don't forget to update <b>grafana-provisioning/datasources/datasource.yml</b>
- Influx URL, 
- Influx API token, 
- Influx Bucket ID(name)  

To run, type the following in command line:  
    docker-compose up -d  
After a few seconds, GRAFANA should be accessible on http://localhost:3000