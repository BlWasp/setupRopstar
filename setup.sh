#!/bin/bash

# Setup all the ropstar project automatically
# Install ROPgadget, libc-database, ropstar and create the symlink for libc-database

mkdir ~/tools
cp setupLibc.sh ~/tools
cd ~/tools 
git clone https://github.com/JonathanSalwan/ROPgadget.git
git clone https://github.com/niklasb/libc-database.git
cd libc-database
apt-get update
apt-get install -y \
  binutils file \
  wget \
  rpm2cpio cpio \
  zstd
./get all
cd ..
git clone https://github.com/xct/ropstar.git
cd ropstar
pip3 install -r requirements.txt
cd ..
./setupLibc.sh
