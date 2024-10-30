for drive in $(lsblk -d -n -o NAME); do
    echo "Running smartctl short test on /dev/$drive"
    sudo smartctl -t short /dev/$drive
done