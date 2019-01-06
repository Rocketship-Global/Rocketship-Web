#!/usr/bin/env bash
# NOTE: this only works for systems that use apt as their package manager
echo "Installing PostgreSQL and configuring it for use."

# Install postgres
echo "-- INSTALLING POSTGRESQL --"
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

# Create a user and a database in postgres
echo "-- POSTGRESQL INIT --"
sudo -u postgres createuser rocketship
sudo -u postgres createdb rocketship

# Add the user to linux
echo "-- CREATING ROCKETSHIP LINUX USER --"
sudo useradd --no-create-home rocketship

# Installation complete!
echo "-- CONFIGURATION COMPLETE --"
