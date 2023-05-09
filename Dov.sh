echo  _____   __   _   _____   _____   _____        _____    _____       ___  ___   _____   _     _   _____        _____   _____   _____   _   _    _____   _____   
echo /  ___| |  \ | | |_   _| /  _  \ /  ___/      |  _  \  | ____|     /   |/   | /  _  \ | |   / / | ____|      |  _  \ /  _  \ /  ___| | | / /  | ____| |  _  \  
echo | |     |   \| |   | |   | | | | | |___       | |_| |  | |__      / /|   /| | | | | | | |  / /  | |__        | | | | | | | | | |     | |/ /   | |__   | |_| |  
echo | |     | |\   |   | |   | | | | \___  \      |  _  /  |  __|    / / |__/ | | | | | | | | / /   |  __|       | | | | | | | | | |     | |\ \   |  __|  |  _  /  
echo | |___  | | \  |   | |   | |_| |  ___| |      | | \ \  | |___   / /       | | | |_| | | |/ /    | |___       | |_| | | |_| | | |___  | | \ \  | |___  | | \ \  
echo \_____| |_|  \_|   |_|   \_____/ /_____/      |_|  \_\ |_____| /_/        |_| \_____/ |___/     |_____|      |_____/ \_____/ \_____| |_|  \_\ |_____| |_|  \_\ 
su
sudo apt-get autoremove docker docker-ce docker-engine docker.io containerd runc
sudo rm -rf /var/lib/docker
sudo find / -name '*docker*'
sudo apt-get purge docker-ce
dpkg -l | grep docker
sudo apt-get autoremove docker-ce-*
sudo rm -rf /etc/systemd/system/docker.service.d
sudo rm -rf /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
sudo find / -name "*docker*" -exec `rm -rf` {} +
