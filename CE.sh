echo   _____   __   _   _____   _____   _____        _   __   _   _____   _____       ___   _       _            _____   _____   _____   _   _    _____   _____         _____   _____  
echo /  ___| |  \ | | |_   _| /  _  \ /  ___/      | | |  \ | | /  ___/ |_   _|     /   | | |     | |          |  _  \ /  _  \ /  ___| | | / /  | ____| |  _  \       /  ___| | ____| 
echo | |     |   \| |   | |   | | | | | |___       | | |   \| | | |___    | |      / /| | | |     | |          | | | | | | | | | |     | |/ /   | |__   | |_| |       | |     | |__   
echo | |     | |\   |   | |   | | | | \___  \      | | | |\   | \___  \   | |     / / | | | |     | |          | | | | | | | | | |     | |\ \   |  __|  |  _  /       | |     |  __|  
echo | |___  | | \  |   | |   | |_| |  ___| |      | | | | \  |  ___| |   | |    / /  | | | |___  | |___       | |_| | | |_| | | |___  | | \ \  | |___  | | \ \       | |___  | |___  
echo \_____| |_|  \_|   |_|   \_____/ /_____/      |_| |_|  \_| /_____/   |_|   /_/   |_| |_____| |_____|      |_____/ \_____/ \_____| |_|  \_\ |_____| |_|  \_\      \_____| |_____| 
su
echo "Acquire::https::Verify-Peer "false";" >> /etc/apt/apt.conf.d/80ssl-exceptions
echo "Acquire::https::Verify-Host "false";" >> /etc/apt/apt.conf.d/80ssl-exceptions
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
