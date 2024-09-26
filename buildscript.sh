sudo rm -rf build/
mkdir build
cd build
echo $HOME
cmake ../ -DCMAKE_INSTALL_PREFIX=$HOME/slaynvilleWOW -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DWITH_WARNINGS=1 -DTOOLS_BUILD=all -DSCRIPTS=static -DMODULES=static
nproc --all
make -j 1
make install
