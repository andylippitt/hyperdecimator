sudo raspi-config
iwconfig
ifconfig
sudo reboot now
ls
sudo shutdown now
lsusb
sigrok-cli --scan
sudo shutdown now
lsusb
sigrok-cli --scan
sigrok-cli --drive fx2lafw show
sigrok-cli --driver fx2lafw show
sigrok-cli --driver fx2lafw --show
sigrok-cli --driver fx2lafw --samples 100
sigrok-cli --driver fx2lafw --samples 100 --channels 1,2
sigrok-cli --driver fx2lafw --samples 100 --channels D0,D1
sigrok-cli --driver fx2lafw --samples 12M --samplerate 6M --channels D0,D1
sigrok-cli --driver fx2lafw --samples 12M --sample-rate 6M --channels D0,D1
sigrok-cli --driver fx2lafw --samples 12M --config samplerate 6M --channels D0,D1
sigrok-cli --driver fx2lafw --samples 12M --config samplerate=6M --channels D0,D1
sigrok-cli --driver fx2lafw --samples 12M --config samplerate=6M --channels D0,D1 -o output.sr
sigrok-cli --driver fx2lafw --samples 12M --config samplerate=3M --channels D0,D1 -o output.sr
sigrok-cli --driver fx2lafw --samples 10000000 --config samplerate=3M --channels D0,D1 -o output.sr
sigrok-cli --driver fx2lafw --samples 10000000 --config samplerate=3M --channels D0,D1 -o output.vcd
sigrok-cli --driver fx2lafw --samples 10000000 --config samplerate=3M --channels D0,D1 --output-format vcd -o /dev/null
sigrok-cli --driver fx2lafw --time 10000  --config samplerate=3M --channels D0,D1 --output-format vcd -o /dev/null
sigrok-cli --driver fx2lafw --time 10000  --config samplerate=3M --output-format vcd -o /dev/null
sigrok-cli --driver fx2lafw --time 1000 --config samplerate=3M --channels D0,D1
sigrok-cli --driver fx2lafw --time 1000 --config samplerate=6M --channels D0,D1
sigrok-cli --driver fx2lafw --time 100 --config samplerate=6M --channels D0,D1
sigrok-cli --driver fx2lafw --time 500 --config samplerate=6M --channels D0,D1
exit
sudo shutdown now
cd /ev
cd /dev
ls
ls spi*
tail spidev0.0
cat spidev0.0
cat spidev0.1
echo -ne "\x01\x02\x03" > /dev/spidev0.0
echo -ne "\x01\x02" > /dev/spidev0.0
echo -ne "\x01" > /dev/spidev0.0
echo -ne "\x00" > /dev/spidev0.0
echo -ne "\x02" > /dev/spidev0.0
echo -ne "\x03" > /dev/spidev0.0
echo -ne "\x04" > /dev/spidev0.0
echo -ne "\x05" > /dev/spidev0.0
echo -ne "\x06" > /dev/spidev0.0
echo -ne "\x07" > /dev/spidev0.0
echo -ne "\x03" > /dev/spidev0.0
echo -ne "\x07" > /dev/spidev0.0
cd 
ls
git
apt-get install git build-essentials
sudo apt-get install git build-essentials
sudo apt-get install git gcc
ls
mkdir spidev_test
cd spidev_test/
wget https://raw.githubusercontent.com/raspberrypi/linux/rpi-3.10.y/Documentation/spi/spidev_test.c
gcc -o spidev_test spidev_test.c
ls
./spidev_test 
cat spidev_test
ls
cat spidev_test.c 
./spidev_test --device /dev/spidev0.0
ls
cat spidev_test.c 
./spidev_test --device /dev/spidev0.0 -H
./spidev_test --device /dev/spidev0.0 -H -O
./spidev_test --device /dev/spidev0.0 -O
./spidev_test --device /dev/spidev0.0 -O -H
./spidev_test --device /dev/spidev0.0 -O -H --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -C
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -C --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -d 10
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -d 10 --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -d 10 --help -b 2
./spidev_test --device /dev/spidev0.0 -O -H --speed 10000000 -d 10 -b 2
./spidev_test --device /dev/spidev0.0 -O -H --speed 32000000 -d 10 -b 2
./spidev_test --device /dev/spidev0.0 -O -H --speed 32000000 -d 10
ls
cat spidev_test.c
./spidev_test --device /dev/spidev0.0 -O -H --speed 32000000 -d 10
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 10
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 100
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 10
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 100
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 100 --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 100 -L
./spidev_test --device /dev/spidev0.0 --speed 1000000 -d 100 -L
ls
cat spidev_test.c
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 100 -N
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -d 200 -N
./spidev_test --device /dev/spidev0.0 -O -H --speed 1000000 -N
./spidev_test --device /dev/spidev0.0 -O --speed 1000000 -N
./spidev_test --device /dev/spidev0.0 -C --speed 1000000 -N
./spidev_test --device /dev/spidev0.0 -C -O --speed 1000000 -N
./spidev_test --device /dev/spidev0.0 -C -O --speed 100000 -N
./spidev_test --device /dev/spidev0.0 -C -O --speed 10000 -N
./spidev_test --device /dev/spidev0.0 -C -O --speed 10000
./spidev_test --device /dev/spidev0.0 -C -O --speed 100000000
./spidev_test --device /dev/spidev0.0 -C -O --speed 1000
cd /dev
ls
echo -ne "\x07" > /dev/spidev0.0
echo -ne "\x07" > /dev/spidev0.1
./spidev_test --device /dev/spidev0.1 -C -O --speed 1000
cd /
ls
cd home
ls
cd
ls
cd spidev_test/
./spidev_test --device /dev/spidev0.1 -C -O --speed 1000
./spidev_test --device /dev/spidev0.1 -C -O --speed 10000
./spidev_test --device /dev/spidev0.0 -C -O --speed 10000
./spidev_test --device /dev/spidev0.1 -C -O --speed 10000
./spidev_test --device /dev/spidev0.0 -C -O --speed 10000
./spidev_test --device /dev/spidev0.0 -C -O --speed 100000
./spidev_test --device /dev/spidev0.0 -C --speed 100000
./spidev_test --device /dev/spidev0.0 -C -O --speed 100000
./spidev_test --device /dev/spidev0.0 -O --speed 100000
./spidev_test --device /dev/spidev0.0 -O --speed 100000 --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 100000 --help
./spidev_test --device /dev/spidev0.0 -O -H --speed 100000
./spidev_test --device /dev/spidev0.1 -O -H --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H -N --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000 --help
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000 -L
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000 -C
./spidev_test --device /dev/spidev0.1 -O -H -C --speed 100000 -C
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000 -C
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000 -C
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 100000
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 1000000
./spidev_test --device /dev/spidev0.0 -O -H -C --speed 10000000
./spidev_test --device /dev/spidev0.0 --speed 10000000
./spidev_test --device /dev/spidev0.0 -H -O --speed 10000000
./spidev_test --device /dev/spidev0.0 -C --speed 10000000
./spidev_test --device /dev/spidev0.0 --speed 10000000
./spidev_test --device /dev/spidev0.0 -C --speed 10000000
./spidev_test --device /dev/spidev0.0 --speed 10000000
./spidev_test --device /dev/spidev0.0 --speed 10000000 --help
./spidev_test --device /dev/spidev0.0 --speed 10000000 --delay 500
./spidev_test --device /dev/spidev0.0 --speed 10000000 --delay 1500
./spidev_test --device /dev/spidev0.0 --speed 10000000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 1000000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 100000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 10000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 1000000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 10000000 --delay 50
echo -ne "\x07" > /dev/spidev0.1
echo -ne "\x07" > /dev/spidev0.0
echo -ne "\x01" > /dev/spidev0.0
echo -ne "\x01" > /dev/spidev0.1
./spidev_test --device /dev/spidev0.0 --speed 10000000 --delay 50
./spidev_test --device /dev/spidev0.0 --speed 10000000
./spidev_test --device /dev/spidev0.0 --speed 30000000
./spidev_test --device /dev/spidev0.0 --speed 20000000
ls
cat spidev_test.c
./spidev_test --device /dev/spidev0.0 --speed 20000000 -R
./spidev_test --device /dev/spidev0.0 --speed 20000000
./spidev_test --device /dev/spidev0.0 -O -H --speed 20000000
./spidev_test --device /dev/spidev0.0 --speed 20000000
./spidev_test --device /dev/spidev0.0 -C --speed 20000000
./spidev_test --device /dev/spidev0.0 --help --speed 20000000
./spidev_test --device /dev/spidev0.0 -C --speed 20000000
./spidev_test --device /dev/spidev0.0 -H --speed 20000000
./spidev_test --device /dev/spidev0.0 -O --speed 20000000
./spidev_test --device /dev/spidev0.0 --speed 20000000
./spidev_test --device /dev/spidev0.1 --speed 20000000
./spidev_test --device /dev/spidev0.0 --speed 20000000
./spidev_test --device /dev/spidev0.1 --speed 20000000
./spidev_test --device /dev/spidev0.0 --speed 20000000
./spidev_test --device /dev/spidev0.0 --speed 2000000
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 1
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 10
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 1000
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 10000
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 10000 -C
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 10000
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 100000
./spidev_test --device /dev/spidev0.0 --speed 2000000 --delay 1000000
./spidev_test --device /dev/spidev0.0 --speed 20000000 --delay 1000000
sudo shutdown now
cd spidev_test/
./spidev_test --device /dev/spidev0.0 --speed 20000000 --delay 1000000
./spidev_test --device /dev/spidev0.0 --speed 15000000 --delay 1000000
./spidev_test --device /dev/spidev0.0 --speed 25000000 --delay 1000000
./spidev_test --device /dev/spidev0.0 --speed 25000000
./spidev_test --device /dev/spidev0.0 --speed 15000000
./spidev_test --device /dev/spidev0.0 --speed 19000000
sudo shutdown now
cd spidev_test/
./spidev_test --device /dev/spidev0.0 --speed 19000000
ls
cat spidev_test
nano spidev_test.c 
gcc spidev_test.c -o spidev_test
./spidev_test --device /dev/spidev0.0 --speed 19000000
./spidev_test
nano spidev_test.c 
gcc spidev_test.c -o spidev_test
./spidev_test --device /dev/spidev0.0 --speed 19000000
./spidev_test --device /dev/spidev0.0 --speed 18000000
./spidev_test --device /dev/spidev0.0 --speed 10000000
nano spidev_test.c 
gcc spidev_test.c -o spidev_test
./spidev_test
./spidev_test --speed 20000000
./spidev_test --speed 15000000
./spidev_test --speed 12000000
./spidev_test -H --speed 12000000
./spidev_test -H --speed 25000000
./spidev_test -H -O --speed 25000000
./spidev_test -H --speed 25000000
./spidev_test -H --speed 30000000
./spidev_test -H --speed 20000000
ls
top
sudo shutdown now
top
exit
ls
exit
ls
cd ftdi/
ls
cd release/
dls
ls
cd build/
ls
sudo su
cd ftdi/
ls
cd release/
ls
cat ReadMe.txt 
lsb
lsusb
sudo reboot
lsusb
ls /dev
ls
./grabserial 
./grabserial -h
lsusb
lsmod
lsmod | grep ft
ls
cd ftdi/
ls
cd release/
ls
cd examples/
ls
cd S
ls
cd Simple/
ls
make
cat main.c
ls
./simple-dynamic 
rmmod ftdi_sio
sudo rmmod ftdi_sio
sudo rmmod usbserial
./simple-dynamic 
ls
cat main.c 
nano main.c 
stty -F /dev/ttyUSB0 115200
sudo reboot now
ls 
stty -F /dev/ttyUSB0 12000000
stty -F /dev/ttyUSB1 > cap.2pdm
l
stty -F /dev/ttyUSB1
stty -F /dev/ttyUSB1 -B 12000000
ls
./grabserial -h
./grabserial /dev/ttyUSB1
./grabserial -d /dev/ttyUSB1
./grabserial -d /dev/ttyUSB1 -b 4000000
./grabserial -d /dev/ttyUSB1 -b 12000000
./grabserial -d /dev/ttyUSB1 -B 12000000
./grabserial -d /dev/ttyUSB1 -B 12000000 > cap.2pdm
ls
ls -l
cat grabserial 
ls
nano grabserial 
fg
sudo apt-get upgrade
./grabserial -d /dev/ttyUSB1 -B 12000000 > cap.2pdm
ls
ls -lh
nano mysetbaud.py
ls
chmod  +x mysetbaud.py 
./mysetbaud.py <>/dev/ttyUSB1 12000000
python3 ./mysetbaud.py <>/dev/ttyUSB1 12000000
python ./mysetbaud.py <>/dev/ttyUSB1 12000000
nano mysetbaud.py 
./mysetbaud.py <>/dev/ttyUSB1 12000000
caat /dev/ttuUSB1
cat /dev/ttuUSB1
cat /dev/ttyUSB1
cat /dev/ttyUSB1 > cap.2pdm
dd if=/dev/ttyUSB1 of=cap.2pdm
dd if=/dev/ttyUSB1 of=cap.2pdm count=24000000
dd
dd --help
stty /dev/ttyUSB1 > cap.2pdm
stty
stty --help
stty -f /dev/ttyUSB1 > cap.2pdm
stty -F /dev/ttyUSB1 > cap.2pdm
stty -F /dev/ttyUSB1
dd if=/dev/ttyUSB1 of=cap.2pdm bs=1M
cat /dev/ttyUSB1
cat /dev/ttyUSB0
./mysetbaud.py <>/dev/ttyUSB1 12000000
cat /dev/ttyUSB0
cat /dev/ttyUSB1
ls
dd if=/dev/ttyUSB1 of=cap.2pdm bs=1M
dd if=/dev/ttyUSB1 of=cap.2pdm bs=1M count=10000
dd if=/dev/ttyUSB1 of=cap.2pdm bs=1M count=10M
dd if=/dev/ttyUSB1 of=cap.2pdm bs=1M count=10M iflag=fullblock
stty < /dev/ttyUSB1
stty raw < /dev/ttyUSB1
sudo stty raw
sudo stty raw < /dev/ttyUSB1
reset
stty -F /dev/ttyUSB1 speed
cat /dev/ttyUSB1
cat /dev/ttyUSB1 > cap.2pdm
ls
ls -l
ls -lh
rm *.2pdm
time cat /dev/ttyUSB1 > cap.2pdm
ls -l
ls
xit
exit
ls
exit
ls
ps aux
ls
./mysetbaud.py 
cat start.sh 
./start.sh 
ls
cat /etc/xinetd.d/
cat /etc/xinetd.d/hyperdecimator 
cd ..
cd /usr/local
ls
cat hyperdecimator 
ps aux | grep hyper
ls
./hyperdecimator 
cat hyperdecimator 
ls /dev/ttyUSB1
ls
./mysetbaud.py 
cat mysetbaud.py 
ls
cat hyperdecimator 
sudo /usr/local/mysetbaud.py <>/dev/ttyUSB1 12000000
sudo shutdown now
ks
ls
sudo /usr/local/mysetbaud.py <>/dev/ttyUSB1 12000000
ls
lsusb
ls
cat start.sh 
ls
./grabserial -h
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
ls
ls -l
ls -lh
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
ls
cat /dev/ttyUSB1 > tmp.2pdm 
cat /dev/ttyUSB0 > tmp.2pdm 
ls
ls -l
cat /dev/ttyUSB2 > tmp.2pdm 
cat /dev/ttyUSB1 > tmp.2pdm 
ls
cat  cap.py 
python3 cap.py
ls
ls -l
cat output.sr
s
ls
cd ftdi/
ls
cd release/
ls
lsmod
lsmod ftd*
lsmod | grep ftdi
lsmod | grep serial
lsmod | grep ft
ls
cd ..
ls
cd ..
ls
sudo su
ls
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
cat /dev/ttyUSB1
tail /dev/ttyUSB1
tail -f /dev/ttyUSB1
ls
tail -f /dev/ttyUSB1
tail -f /dev/ttyUSB1 > tmp.2pdm
ls
ls -l
ls -lh
cat start.sh 
./start.sh 
cat /dev/ttyUSB1
ls
dd if=/dev/ttyUSB1 of=stdout
stty raw /dev/ttyUSB1 
stty raw < /dev/ttyUSB1 
stty raw < /dev/ttyUSB1 > stdout
ls
rm stdout
cat /dev/ttyUSB0 | hexdump -v -e '/1 "%02X "' -e '/1 "%c\n"
cat /dev/ttyUSB0 | hexdump -v -e '/1 "%02X "' -e '/1 "%c\n"'
cat /dev/ttyUSB1 | hexdump -v -e '/1 "%02X "' -e '/1 "%c\n"'
cat /dev/ttyUSB1 > test.2pdm
ls
ls -l
ls -lh
ls
sudo reboot now
ls
cat
cat /dev/ttyUSB1
ls
cat /dev/ttyUSB1 > out.2pdm
tail -f /dev/ttyUSB1 > out.2pdm
ls -l
stty raw < /dev/ttyUSB1 > stdout
cat /dev/ttyUSB1 > out.2pdm
sudo reboot now
ls
sudo su
./start.sh 
stty raw /dev/ttyUSB1 
dd if=/dev/ttyUSB1 of=stdout
less .bash_history 
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
ls
ls -l
stty raw /dev/ttyUSB1 
cat /dev/ttyUSB1 | hexdump -v -e '/1 "%02X "' -e '/1 "%c\n"'
dd if=/dev/ttyUSB1 of=stdout
ls
python cap.py 
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
cat /dev/ttyUSB1
tail -f /dev/ttyUSB1
ls
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
tail -f /dev/ttyUSB1
./start.sh 
cat /dev/ttyUSB1 > test.2pdm
less .bash_history 
stty raw /dev/ttyUSB1 
stty raw < /dev/ttyUSB1
stty raw < /dev/ttyUSB1 > stdout
ls
rm stdout 
ls
cat /dev/ttyUSB1
./start.sh 
cat /dev/ttyUSB1
stty raw < /dev/ttyUSB1 > stdout
ls
sudo ./start.sh 
stty -F /dev/ttyUSB1 speed
sudo ./start.sh 
./grabserial -d /dev/ttyUSB1 -B 12000000 > tmp.2pdm
cat tmp.2pdm 
ls
ls -l
sudo ./start.sh 
cat /dev/ttyUSB1
ls
stty raw < /dev/ttyUSB1 > stdout
sudo ./start.sh 
sudo reboot now
./grabserial -d /dev/ttyUSB1 -B 12000000 > /dev/null
stty raw < /dev/ttyUSB1 > /dev/null
sudo reboot now
sudo stty -F /dev/ttyUSB1 raw
sudo ./start.sh 
./grabserial -d /dev/ttyUSB1 -B 12000000 > /dev/null
stty raw < /dev/ttyUSB1 > /dev/null
sudo reboot now
./grabserial -h
./grabserial -d /dev/ttyUSB1 -B 12000000 -e=0 > /dev/null
./grabserial -d /dev/ttyUSB1 -B 12000000 -e 1 > /dev/null
stty raw < /dev/ttyUSB1 > /dev/null
ls
nano grabserial 
ls
stty raw < /dev/ttyUSB1 > /dev/null
stty 12000000 < /dev/ttyUSB1 > /dev/null
cat St
ls
cat start.sh 
ls
cat mysetbaud.py 
setserial
sudo apt-get install setserial
ls
setserial
setserial /dev/ttyUSB1
setserial -a /dev/ttyUSB1
sudo reboot now
setserial -a /dev/ttyUSB1
stty -a -F /dev/ttyUSB1
./grabserial -d /dev/ttyUSB1 -B 12000000 > /dev/null
stty raw < /dev/ttyUSB1 > /dev/null
stty -h
stty --help
stty -g -F /dev/ttyUSB1
stty -F /dev/ttyUSB1 0:0:1cb0:0:3:1c:7f:15:4:0:1:0:11:13:1a:0:12:f:17:16:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0
sudo reboot now
stty -F /dev/ttyUSB1 0:0:1cb0:0:3:1c:7f:15:4:0:1:0:11:13:1a:0:12:f:17:16:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0
sudo stty -F /dev/ttyUSB1 0:0:1cb0:0:3:1c:7f:15:4:0:1:0:11:13:1a:0:12:f:17:16:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0
sudo reboot now
sudo nano /etc/rc.local 
sudo reboot now
ls
cd fx3/
ls
lsusb
cd /dev
ls
lsusb -v
sudo shutdown now
ls
exit
ls
ping raspberrypi
ssh raspberrypi
ls
cat /etc/hostname
ls
cd driver/
ls
make -C /lib/modules/@(uname -r)/build M=$(pwd) modules
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
ls /usr/src/linux-headers-5.4.51-v7l+
ls -la /usr/src/linux-headers-5.4.51-v7l+
rm -rf /usr/src/linux-headers-5.4.51-v7l+
sudo rm -rf /usr/src/linux-headers-5.4.51-v7l+
ls
mkdir driver
cd driver/
ls
nano pendrive.c
ls
gcc pendrive.c 
sudo apt-get install linux-headers
ls
nano Makefile
ls
mv pendrive.c pen-driver.c
make
ls
ls -l
ls
sudo make
sudo apt-get install build-essentials
make modules_prepare
ls
cat Makefile 
usname -r
uname -r
ls
gcc pen-driver.c 
make
cat Makefile 
nano Makefile 
make
sudo make 
sudo apt install raspberrypi-kernel-headers
cd /lib/modules/$(uname -r)/build
ls
make modules_prepare
sudo make modules_prepare
cd 
cd raspbian
mkdir raspbian
cd raspbian/
ls
cd ..
sudo apt-get update 
sudo apt-get upgrade
rpi-update
sudo rpi-update
sudo reboot now
lsmod
lsmod | pen
ls
lsmod | grep pen
ls
cd driver/
ls
insmod pen-driver.ko
sudo insmod pen-driver.ko
xxd -b /dev/pen0
sudo xxd -b /dev/pen0
s
dir
nano Makefile 
ls
sudo make
ls
cat Makefile 
nano Makefile 
sudo make
ls
nano Makefile 
sudo make
ls
nano pen-driver.
nano pen-driver.c
ls
sudo rmmod pen-driver.ko
ls /dev/pen0
ls
sudo insmod pen-driver.ko
xxd -b /dev/pen0
sudo xxd -b /dev/pen0
ls
sudo su
sudo xxd -b /dev/pen0
ls
cat Makefile 
s
ls
cat pen-driver.c 
sudo xxd -b /dev/pen0
sudo shutdown now
cd driver/
sudo insmod pen-driver.kop
sudo insmod pen-driver.ko
sudo xxd -b /dev/pen0
sudo shutdown now
lsusb -v | more
ls
cd driver/
sudo insmod pen-driver.ko
sudo xxd -b /dev/pen0
sudo shutdown now
ls
cd driver/
sudo shutdown now
lsusb
cd driver/
ls
sudo insmod pen-driver.ko
sudo xxd -b /dev/pen0
sudo shutdown now
ls
lsmod
ls
cd driver/
ls
rm -rf helloworld/
ls
exit
passwd
ls
exit
ls
cd hyperdecimator
ls
git pull
ls
cd onboard/
ls
cd pi
ls
cd driver/
ls
cat notes.txt 
ls /usr/lib/modules-load.d/
ls
cd /usr/lib/
ls
cd modules-load.d/
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd lib/
ls
cd mod
ls
cd ke
ls
cd modules/
ls
ls 
ls /lib/modules/$(uname -r)/
ls /lib/modules/$(uname -r)/kernel
ls /lib/modules/$(uname -r)/kernel/drivers
sudo mkdir /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator
cd 
ls
cd hyperdecimator
ls
cd onboard/
ls
cd pi
cd driver/
ls
cp hyperdecimator-driver.ko /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
sudo cp hyperdecimator-driver.ko /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
insmod hyperdecimator-driver.ko
sudo insmod hyperdecimator-driver.ko
ls
sudo make
sudo insmod hyperdecimator-driver.ko
sudo rm /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
sudo insmod hyperdecimator-driver.ko
ls
rm modules.order Module.symvers *.o *.ko
sudo rm modules.order Module.symvers *.o *.ko
ls
sudo rm hyperdecimator-driver.mod
sudo rm hyperdecimator-driver.mod.c
ls
sudo make
ls
sudo insmod hyperdecimator-driver.ko
dmesg
ls
nano hyperdecimator-driver.c
sudo make
ls
sudo insmod hyperdecimator-driver.ko
lsmod
ls /dev/hwrng 
lsusb
ls
sudo cp hyperdecimator-driver.ko /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
sudo nano /etc/modules
sudo shutdown now
ls
lsmod
lsmod | hyper
lsmod | grep hyper
ls
lsusb
sudo shutdown now
lsusb
ls
lsmod | grep hyp
ls
sudo insmod hyperdecimator-driver
dmesg
ls
cd hyperdecimator
ls
cd onboard/
ls
cd po
cd pi/driver/
ls
ls /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
cp hyperdecimator-driver.o /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.o
sudo cp hyperdecimator-driver.o /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.o
cd ..
sudo insmod hyperdecimator-driver
ls -l /lib/modules/$(uname -r)/kernel/drivers/hyperdecimator/hyperdecimator-driver.ko
ls
cd driver/
ls
sudo cp *.ko /lib/modules/5.4.83-v7l+
cd ..
sudo insmod hyperdecimator-driver
ls /lib/modules/5.4.83-v7l+
depmod -a
sudo depmod -a
sudo insmod hyperdecimator-driver
sudo modprobe hyperdecimator-driver
sudo insmod hyperdecimator-driver
ls
sudo reboot now
lsmod
lsmod | grep hy
ls
ls /dev/hyperdecimator0 
ls
cd hyperdecimator
ls
cd onboard/
ls
cd pi
ls
cd xinetd/
ls
sudo cp hyperdecimator /etc/xinetd.d
ls /etc/xinetd.d/
ls -l /etc/xinetd.d/
ls
cat hyperdecimator 
cat /dev/hyperdecimator0 
sudo reboot now
lsusb
sudo shutdown
sudo shutdown now
ls /dev/hyperdecimator0 
ls
cat /etc/xinetd.d/hyperdecimator 
which cat
sudo nano /etc/xinetd.d/hyperdecimator 
fg
sudo service xinetd reload
dmesg
telnet localhost 3333
netstat -a
netstat -a | grep 333
cd /etc
cd xinetd.d/
ls
cat hyperdecimator 
which cat
sudo nano hyperdecimator 
sudo service xinetd reload
dmesg
netstat -a | grep 33
sudo shutdown now
ls /dev/hy
lsusb
sudo shutdown now
ls /dev/hyperdecimator0 
ls
sudo shutdown now
ls /dev/hyperdecimator0 
exit
sudo shutdown now
ls /dev/hyperdecimator0 
sudo shutdown now
ls
ls /dev/hyperdecimator0 
ls
exit
ls
sudo shutdown now
sudo xxd -b -c 4 /dev/hyperdecimator0
ls
sudo xxd -b -c 4 /dev/hyperdecimator0
ifconfig
exit
ls
top
ls
cat st
cat start.sh 
ls
cat grabserial 
code ~/.bash_history 
cat
exit
