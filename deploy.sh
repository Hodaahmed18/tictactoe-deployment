#!/bin/bash

echo " Starting deployment..."

echo " Updating system packages..."
sudo apt update -y &>/dev/null && sudo apt upgrade -y &>/dev/null

echo " Installing nginx..."
sudo apt install nginx -y &>/dev/null

echo " Installing unzip..."
sudo apt install unzip -y &>/dev/null

echo "⬇️ Downloading Node.js setup script..."
curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh &>/dev/null

echo "⚙️ Configuring Node.js repository..."
sudo bash nodesource_setup.sh &>/dev/null

echo " Installing Node.js v20..."
sudo apt install nodejs -y &>/dev/null

echo " Unzipping app..."
unzip nodejs20-sparta-tictactoe-v1-2.zip &>/dev/null

echo " Installing app dependencies..."
cd app
npm install &>/dev/null

echo "Deployment complete. Starting app..."
npm start
