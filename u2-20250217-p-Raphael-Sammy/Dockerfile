# Use an official Ubuntu base image
FROM ubuntu:24.04

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive
ENV SSHD_CONFIG_ADDITIONAL=""

RUN apt-get update \
    && apt-get install -y curl iproute2 iputils-ping nano nginx openssh-server sudo telnet vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && mkdir -p /run/sshd \
    && chmod 755 /run/sshd \
    && echo "root:root" | chpasswd \
    && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

# Copy the script to configure the user's password and authorized keys
COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh

# Expose SSH and HTTP ports
EXPOSE 22 80

# Start SSH and Nginx server
CMD ["/usr/local/bin/start.sh"]