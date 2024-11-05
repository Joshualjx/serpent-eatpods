curl -OL https://golang.org/dl/go1.23.2.linux-amd64.tar.gz

sudo tar -C /usr/local -xvf go1.23.2.linux-amd64.tar.gz

echo -n "export PATH=$PATH:/usr/local/go/bin" | sudo tee -a ~/.profile

source ~/.profile

go version