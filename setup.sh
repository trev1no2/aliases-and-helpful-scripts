#!/bin/bash

# Step 1, move ./aliases to be ~/.aliases
mv ./aliases ~

# Step 2, create a ~/scripts folder
mkdir ~/scripts

# Step 3, move all .sh files to the dedicated scripts folder
mv *.sh ~/scripts
chmod +x ~/scripts

# add aliases to both bash and tcsh shells and source it
file1 = "~/.bashrc"
file2 = "~/.cshrc"
while read -r line; do
    if [line == "source ~/.aliases"]
    tmp1 = 1
done <$file1
if [!tmp1]; then
    echo 'source ~/.aliases' >> ~/.cshrc
fi 
while read -r line; do
    if [line == "source ~/.aliases"]
    tmp2 = 1
done <$file1
if [!tmp2]; then
    echo 'source ~/.aliases' >> ~/.cshrc
fi 

source ~/.bashrc
source ~/.cshrc

if [$1]; then
    sudo apt-get install -y build-essential bc python bison flex libelf-dev libssl-dev libncurses-dev dwarves
    sudo apt install -y git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build qemu-utils
fi

echo "Make sure to enter 1 if you want to download helpful files"