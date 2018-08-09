#!/bin/bash

# Decrypt the private key
openssl enc -d -aes256 -in .travis/id_rsa.enc -out ~/.ssh/id_rsa -k $GITHUB_TOKEN
# Set the permission of the key
chmod 600 ~/.ssh/id_rsa
# Start SSH agent
eval $(ssh-agent)
# Add the private key to the system
ssh-add ~/.ssh/id_rsa
# Copy SSH config
cp .travis/ssh_config ~/.ssh/config

# Set Git config
git config --global user.name "Abner Chou"
git config --global user.email contact@abnerchou.me
# Deploy to GitHub
cd _book && \
	git init && \
	git add . && \
	git commit -m "`date`" && \
	git push -u git@github.com:NoahDragon/BuildYourOwnLispCn.git HEAD:gh-pages --force
