#!/bin/bash

# Step 1, move ./aliases to be ~/.aliases

if [ -f ".aliases"]; then
mv .aliases ~
mkdir ~/scripts
mv *.sh ~/scripts
chmod +x ~/scripts
fi

# add aliases to both bash and tcsh shells and source it
echo 'source ~/.aliases' >> ~/.cshrc
echo 'source ~/.aliases' >> ~/.cshrc
source ~/.bashrc
source ~/.cshrc
if [$1]; then
    sudo apt-get install -y build-essential bc python bison flex libelf-dev libssl-dev libncurses-dev dwarves
    sudo apt install -y git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build qemu-utils
fi

echo "Make sure to enter 1 if you want to download helpful files"