lab1:
	sed -i 's/lab1/lab1/g' .github/classroom/autograding.json
	cd lab1_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab1_result/.qemu.out
	cd lab1_result && make grade CC=gcc-4.8

lab2:
	sed -i 's/lab1/lab2/g' .github/classroom/autograding.json
	cd lab2_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab2_result/.qemu.out
	cd lab2_result && make grade CC=gcc-4.8

lab3:
	sed -i 's/lab1/lab3/g' .github/classroom/autograding.json
	cd lab3_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab3_result/.qemu.out
	cd lab3_result && make grade CC=gcc-4.8


lab4:
	sed -i 's/lab1/lab4/g' .github/classroom/autograding.json
	cd lab4_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab4_result/.qemu.out
	cd lab4_result && make grade CC=gcc-4.8


lab5:
	sed -i 's/lab1/lab5/g' .github/classroom/autograding.json
	cd lab5_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab5_result/.qemu.out
	cd lab5_result && make grade CC=gcc-4.8


lab6:
	sed -i 's/lab1/lab6/g' .github/classroom/autograding.json
	cd lab6_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab6_result/.qemu.out
	cd lab6_result && make grade CC=gcc-4.8


lab7:
	sed -i 's/lab1/lab7/g' .github/classroom/autograding.json
	cd lab7_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab7_result/.qemu.out
	cd lab7_result && make grade CC=gcc-4.8


lab8:
	sed -i 's/lab1/lab8/g' .github/classroom/autograding.json
	cd lab8_result && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab8_result/.qemu.out
	cd lab8_result && make grade CC=gcc-4.8


codespaces_setenv:	gcc
	sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev \
              gawk build-essential bison flex texinfo gperf libtool patchutils bc \
              zlib1g-dev libexpat-dev pkg-config  libglib2.0-dev libpixman-1-dev git tmux python3 ninja-build zsh -y
	cd .. && wget https://download.qemu.org/qemu-7.0.0.tar.xz
	cd .. && tar xvJf qemu-7.0.0.tar.xz
	cd ../qemu-7.0.0 && ./configure --target-list=i386-softmmu,i386-linux-user
	cd ../qemu-7.0.0 && make -j$(nproc)
	cd ../qemu-7.0.0 && sudo make install
	qemu-system-i386 --version
	qemu-i386 --version

gcc:
	echo "deb http://dk.archive.ubuntu.com/ubuntu/ xenial main" >> /etc/apt/sources.list
	echo "deb http://dk.archive.ubuntu.com/ubuntu/ xenial universe" >> /etc/apt/sources.list
	sudo apt update
	sudo apt install -y gcc-4.8


setup:
	git submodule update --init