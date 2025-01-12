# the official HashiCorp Consul image
FROM hashicorp/consul:latest

# default Consul HTTP port
EXPOSE 8500

# Start the Consul agent in server mode HTTP port (8500)
CMD ["agent", "-server", "-ui", "-bootstrap", "-client=0.0.0.0", "-bind=0.0.0.0", "-data-dir=/consul/data"]