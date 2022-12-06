# Credit to https://www.geeksforgeeks.org/using-github-with-ssh-secure-shell/
ssh-keygen -t rsa -b 4096 -C "jmt2235@columbia.edu"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Now add this key to github and then execute..."
echo "ssh -T git@github.com"
