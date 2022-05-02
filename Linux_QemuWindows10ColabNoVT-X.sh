wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
./ngrok authtoken
nohup ./ngrok tcp 5900 &>/dev/null &
sudo apt update -y > /dev/null 2>&1
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
curl -L -o lite10.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.1.3/providers/qemu.box
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=8  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1


