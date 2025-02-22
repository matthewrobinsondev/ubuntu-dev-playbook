#!/bin/bash
set -e  

GO_VERSION="1.24.0"
GO_URL="https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"

# Download and verify Go
curl -fsSL "$GO_URL" -o go.tar.gz && tar -tzf go.tar.gz > /dev/null || { echo "Invalid Go archive"; exit 1; }

# Install Go
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz

if ! command -v go &> /dev/null; then
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
    source ~/.bashrc
fi

# Confirm installation
go version
