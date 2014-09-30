# Run the build scripts
apt-get update

# Install development components.
apt-get install -y --no-install-recommends libssl-dev man

# Clean up system
apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*

# Create a default user
useradd -s /bin/bash -m devbase
# Set password for the user
echo "devbase:devbase" | chpasswd
echo "devbase ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

