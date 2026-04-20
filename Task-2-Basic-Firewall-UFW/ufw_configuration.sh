#!/bin/bash
sudo ufw allow ssh
sudo ufw deny http
sudo ufw enable
sudo ufw status verbose
