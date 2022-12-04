# Credit to https://www.geeksforgeeks.org/using-github-with-ssh-secure-shell/
ssh-keygen -t rsa -b 4096 -C "jmt2235@columbia.edu"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Now add this key to github and then execute..."
<<<<<<< HEAD
echo "ssh -T git@github.com"
=======
echo "ssh -T git@github.com" 
>>>>>>> 3f91065cff128c1d9bec6c2778747d079c6936d8
