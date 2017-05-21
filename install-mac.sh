brew install openssl libuv cmake
git clone https://github.com/uWebSockets/uWebSockets 
echo "brew and git clone done"
cd uWebSockets
git checkout e94b6e1
patch CMakeLists.txt < ../cmakepatch.txt
mkdir build
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig 
cd build
cmake ..
make 
echo "============"
sudo make install
echo "---------------"
cd ..
cd ..
sudo rm -r uWebSockets