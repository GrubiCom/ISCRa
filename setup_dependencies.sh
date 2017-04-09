#!/bin/bash
sudo apt-get update
sudo apt-get install -y gpsd
sudo apt-get install -y python-gps
sudo apt-get install -y gpsd-clients
sudo apt-get install -y python-pip
sudo pip install -U scikit-learn
sudo apt-get -y install swig 
sudo apt-get -y install libboost-all-dev
tar -xzf dependencies.tar.gz
cd dependencies
cd ./gr-foo
mkdir build
cd build
cmake ../
make -j8
sudo make install
cd ..
cd ..

cd ./gr-ieee802-15-4
mkdir build
cd build
cmake ../
make -j8
sudo make install
cd ..
cd ..

cd ./gr-eventstream
mkdir build
cd build
cmake ../
make -j8
sudo make install
cd ..
cd ..

cd ./gr-uhdgps
mkdir build
cd build
cmake ../
make -j8
sudo make install
cd ..
cd ..

cd ./fann
mkdir build
cd build
cmake ../
make -j8
sudo make install
cd ..
cd ..

sudo pip install fann2
sudo ldconfig
