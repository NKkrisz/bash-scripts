for drive in $(lsblk -d -n -o NAME); do
    echo "Running smartctl long test on /dev/$drive"
    sudo smartctl -t long /dev/$drive
done