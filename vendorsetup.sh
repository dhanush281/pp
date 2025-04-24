#!/bin/bash
#Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# BCR
git clone https://github.com/suvojit213/vendor_bcr.git vendor/bcr

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/BlissRoms-Devices/android_kernel_xiaomi_sky.git device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/dhanush281/android_vendor_xiaomi_sky.git vendor/xiaomi/sky

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi

# Clone the ar repository
echo "cloning agm repository..."
rm -rf hardware/qcom-caf/sm8450/audio/primary-hal && git clone https://github.com/lostark13/audio-ar hardware/qcom-caf/sm8450/audio/primary-hal 

rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/lostark13/arpal-lx -b lineage-22.2-caf-sm8450 hardware/qcom-caf/sm8450/audio/pal

rm -rf build/make/target/product/security && git clone https://github.com/dhanush281/security.git build/make/target/product/security

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"