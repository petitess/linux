sudo mkdir devopsagent
cd devopsagent
sudo tar zxvf ../vsts-agent-linux-x64-3.234.0.tar.gz



sudo wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
sudo ./dotnet-install.sh --version latest
sudo ./dotnet-install.sh --channel 2.0

wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux tar -xf azcopy.tar.gz sudo ./install.sh
tar -xvf azcopy.tar.gz
sudo ./install.sh


wget https://aka.ms/downloadazcopy-v10-linux
tar -xvf downloadazcopy-v10-linux > azcopy
sudo cp ./azcopy /usr/bin/
