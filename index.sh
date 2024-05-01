sudo su
apt update
echo "Download windows files"
wget -O w7x64.img https://bit.ly/akuhnetw7X64
echo "Download ngrok"
snap install ngrok
ngrok config add-authtoken 2a4ekZSaJDL950Bw6JlKJSyDTJh_6W2zVLshyBndDGnvaa7Qq
ngrok tcp 3388 &
echo Downloading File From akuh.net
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w7x64.img -m 4G -smp cores=2 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Free RDP now"
echo "Wait 2 minute to finish bot"
echo "You can close this tab"
echo "RDP runs"
echo "===================================="
sleep 432000
