git clone https://github.com/najahiiii/aarch64-linux-gnu -b gcc4.9.4-20190301 ~/gcc49
CROSS_COMPILE=~/gcc49/bin/aarch64-linux-gnu-;
export ARCH=arm64;
export KBUILD_BUILD_USER="AyraHikari";
export KBUILD_BUILD_HOST="NusantaraDevs";
mkdir -p out
make O=out land_defconfig;
make O=out -j$(nproc --all);
