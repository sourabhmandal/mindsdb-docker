# Use the official MindsDB image as the base
FROM mindsdb/mindsdb:latest

# Set the environment variable for MKL optimization
# ENV MKL_SERVICE_FORCE_INTEL=1

# Copy the configuration file
COPY mdb_config.json /root/mindsdb_config.json

# # Set the working directory
WORKDIR /root

# # Specify the volume for data persistence on Fly.io
VOLUME /root/mdb_storage

# Expose the necessary ports for MindsDB services
EXPOSE 47334 47335 47336

# Define the command to start MindsDB when the container runs
CMD ["mindsdb", "--config", "mindsdb_config.json"]

