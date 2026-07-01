# Tic Tac Toe Deployment

Automated deployment of a Node.js tic tac toe app onto a fresh Ubuntu EC2 instance on AWS.

## What it does
- Updates and upgrades the system
- Installs nginx, Node.js v20, and unzip
- Transfers and unzips the app
- Installs app dependencies via npm
- Configures nginx as a reverse proxy (port 80 → port 3000)
- Starts the app using pm2 (runs headless, survives disconnects)

## How to use
1. Spin up a fresh Ubuntu EC2 instance
2. Open ports 22 (SSH), 80 (HTTP) and 3000 in your security group
3. SCP the app zip and this script onto the instance
4. Run: `chmod +x deploy.sh && ./deploy.sh`
5. Visit your public IP in a browser — no port number needed

## Stack
- Ubuntu 26.04 on AWS EC2
- Node.js v20
- nginx (reverse proxy)
- pm2 (process manager)
