for drive in $(lsblk -d -n -o NAME); do
    echo "Checking test result for /dev/$drive"
    sudo smartctl -l selftest /dev/$drive
done