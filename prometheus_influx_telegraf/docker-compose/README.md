# Example docker-compose stack for PROMETHEUS Remote Write to INFLUXdb via TELEGRAF
Don't forget to update telegraf.conf:
- Influx URL, 
- Influx API token, 
- Influx Bucket ID.
Don't forget to update grafana-provisioning/datasources/datasource.yml
- Influx URL, 
- Influx API token, 
- Influx Bucket ID(name).
To run, type the following in command line:
    docker-compose up -d
After a few seconds, GRAFANA should be accessible on http://localhost:3000