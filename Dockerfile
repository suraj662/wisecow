# Base image
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && apt-get install -y fortune-mod cowsay && apt-get clean

# Copy the Wisecow script into the container
COPY wisecow.sh /wisecow.sh
RUN chmod +x /wisecow.sh

# Expose the application's port
EXPOSE 4499

# Run the application
CMD ["/wisecow.sh"]
