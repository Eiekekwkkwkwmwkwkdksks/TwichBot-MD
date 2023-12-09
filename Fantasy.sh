
#!/data/data/com.termux/files/usr/bin/bash 
# Interpretación determinada para la ejecución      

echo -e "\e[35m
 █▀▀█ ░░▒█ █░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀▀         █░░░ █▀▀█         █▀▀█ █▀▀█ █▄░▒█ ▀▀█▀▀ █▀▀█ █░░░ █░░░ █▀▀█  
 █▄▄█ ▄░▒█ █░▒█ ▀▀▀▄▄ ░▒█░░ █▀▀▀         █░░░ █▄▄█         █▄▄█ █▄▄█ █▒█▒█ ░▒█░░ █▄▄█ █░░░ █░░░ █▄▄█  
 █░▒█ █▄▄█ ▀▄▄▀ █▄▄▄█ ░▒█░░ █▄▄▄         █▄▄█ █░▒█         █░░░ █░▒█ █░░▀█ ░▒█░░ █░▒█ █▄▄█ █▄▄█ █░▒█  \n\e[0m" 

: <<'COMMENT'
...
COMMENT

echo -e "\033[01;93mPreparando instalación...\nPreparing installation...\n\033[0m"
mp3_array=("install_automatic1.mp3" "install_automatic10.mp3" "install_automatic11.mp3" "install_automatic12.mp3")
random_mp3=${mp3_array[$RANDOM % ${#mp3_array[@]}]}
if wget -q https://github.com/diegojadibot/TwichBot-MD/tree/main/musicSH/"$random_mp3"; then
echo -e "\033[01;32mDescarga exitosa. Reproduciendo sonido de intro...\nDownload successful. Playing intro sound...\n\033[0m"
while true; do
mpv --no-terminal "$random_mp3" &
sleep 2
wait
done &
else
echo -e "\033[01;91mSonido de intro no disponible.\n\033[0m"
fi
 
echo -e "\033[01;32m\033[01mInstalando dependencias!!\nInstalling dependencies!!\n\033[0m" 
echo -e "\e[36m
 ▀█▀ █▄░▒█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█
 ░█░ █▒█▒█ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀
 ▄█▄ █░░▀█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█


 █▀▀█ ▀█▀ ▀▀█▀▀
 █░▄▄ ░█░ ░▒█░░
 █▄▄█ ▄█▄ ░▒█░░\n\e[0m"

if command -v git >/dev/null 2>&1; then
echo -e "\033[01;33mGit ya estaba instalado anteriormente.\033[0m"
else
if pkg install git -y 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(pkg install git -y 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar Git. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
echo -e "\033[01;33mpkg install git -y\npkg install nodejs -y\npkg install ffmpeg -y\npkg install imagemagick -y\npkg install -y yarn\ngit clone https://github.com/GataNina-Li/GataBot-MD\ncd GataBot-MD\nyarn install\nnpm install\nnpm start\033[0m"
exit 1
else
echo -e "\033[01;32m\033[01mGit se ha instalado correctamente.\n\033[0m" 
fi
fi
 
echo -e "\e[35m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█  
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀  
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█  


 █▄░▒█ █▀▀▀█ █▀▀▄ █▀▀▀ ░ ░░▒█ █▀▀▀█
 █▒█▒█ █░░▒█ █░▒█ █▀▀▀ ░ ▄░▒█ ▀▀▀▄▄
 █░░▀█ █▄▄▄█ █▄▄▀ █▄▄▄ █ █▄▄█ █▄▄▄█\n\e[0m"

if command -v node >/dev/null 2>&1; then
echo -e "\033[01;33mNodejs ya estaba instalado anteriormente.\033[0m"
else
if pkg install nodejs -y 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(pkg install nodejs -y 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar Node.js. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
echo -e "\033[01;33mpkg install git -y\npkg install nodejs -y\npkg install ffmpeg -y\npkg install imagemagick -y\npkg install -y yarn\ngit clone https://github.com/GataNina-Li/GataBot-MD\ncd GataBot-MD\nyarn install\nnpm install\nnpm start\033[0m"
exit 1
else
echo -e "\033[01;32m\033[01mNode.js se ha instalado correctamente.\nNode.js has been installed successfully.\n\033[0m" 
fi
fi

echo -e "\e[36m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█  
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀  
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█  


 █▀▀▀ █▀▀▀ █▀▄▀█ █▀▀█ █▀▀▀ █▀▀█
 █▀▀▀ █▀▀▀ █▒█▒█ █▄▄█ █▀▀▀ █░▄▄
 █░░░ █░░░ █░░▒█ █░░░ █▄▄▄ █▄▄█\n\e[0m"

if command -v ffmpeg >/dev/null 2>&1; then
echo -e "\033[01;33mFfmpeg ya estaba instalado anteriormente.\033[0m"
else
if pkg install ffmpeg -y 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(pkg install ffmpeg -y 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar FFmpeg. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
echo -e "\033[01;33mpkg install git -y\npkg install nodejs -y\npkg install ffmpeg -y\npkg install imagemagick -y\npkg install -y yarn\ngit clone https://github.com/GataNina-Li/GataBot-MD\ncd GataBot-MD\nyarn install\nnpm install\nnpm start\033[0m"
exit 1
else
echo -e "\033[01;32m\033[01mFFmpeg se ha instalado correctamente.\nFFmpeg has been installed successfully.\n\033[0m" 
fi
fi

echo -e "\e[35m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█  
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀  
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█  


 ▀█▀ █▀▄▀█ █▀▀█ █▀▀█ █▀▀▀ █▀▄▀█ █▀▀█ █▀▀█ ▀█▀ █▀▀█ █░▄▀
 ░█░ █▒█▒█ █▄▄█ █░▄▄ █▀▀▀ █▒█▒█ █▄▄█ █░▄▄ ░█░ █░░░ █▀▄░
 ▄█▄ █░░▒█ █░▒█ █▄▄█ █▄▄▄ █░░▒█ █░▒█ █▄▄█ ▄█▄ █▄▄█ █░▒█\n\e[0m"

if command -v convert >/dev/null 2>&1; then
echo -e "\033[01;33mImagemagick ya estaba instalado anteriormente.\033[0m"
else
if pkg install imagemagick -y 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(pkg install imagemagick -y 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar ImageMagick. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
echo -e "\033[01;33mpkg install git -y\npkg install nodejs -y\npkg install ffmpeg -y\npkg install imagemagick -y\npkg install -y yarn\ngit clone https://github.com/GataNina-Li/GataBot-MD\ncd GataBot-MD\nyarn install\nnpm install\nnpm start\033[0m"
exit 1
else
echo -e "\033[01;32m\033[01mImageMagick se ha instalado correctamente.\n\033[0m" 
fi
fi

echo -e "\e[36m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█

 
 █░░▒█ █▀▀█ █▀▀█ █▄░▒█
 █▄▄▄█ █▄▄█ █▄▄▀ █▒█▒█
 ░▒█░░ █░▒█ █░▒█ █░░▀█•\n\e[0m"

if command -v yarn >/dev/null 2>&1; then
echo -e "\033[01;33mYarn ya estaba instalado anteriormente.\033[0m"
else
if npm install -g yarn 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(npm install -g yarn 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar Yarn. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
echo -e "\033[01;33mpkg install git -y\npkg install nodejs -y\npkg install ffmpeg -y\npkg install imagemagick -y\npkg install -y yarn\ngit clone https://github.com/GataNina-Li/GataBot-MD\ncd GataBot-MD\nyarn install\nnpm install\nnpm start\033[0m"
exit 1
else
echo -e "\033[01;32m\033[01mYarn se ha instalado correctamente.\n\033[0m" 
fi
fi

echo -e "\e[36m
 ▀▀█▀▀ █▀▀▀█ █▀▀▄ █▀▀▀█               █▀▀█ █▀▀▀█ █▀▀█ █▀▀█ █▀▀▀ █▀▀█ ▀▀█▀▀ █▀▀▀█  
 ░▒█░░ █░░▒█ █░▒█ █░░▒█               █░░░ █░░▒█ █▄▄▀ █▄▄▀ █▀▀▀ █░░░ ░▒█░░ █░░▒█  
 ░▒█░░ █▄▄▄█ █▄▄▀ █▄▄▄█               █▄▄█ █▄▄▄█ █░▒█ █░▒█ █▄▄▄ █▄▄█ ░▒█░░ █▄▄▄█  \n\e[0m"
echo -e "\033[01;32m\033[01m\nTodas las dependencias se han instalado correctamente.\n\033[0m" 

echo -e "\e[35m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█  
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀  
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█  

 
 █▀▀▀ █▀▀█ █▀▀▄ ▀▀█▀▀ █▀▀█ █▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ ░░ █▀▄▀█ █▀▀▄
 █▀▀▀ █▄▄█ █░░█ ░░█░░ █▄▄█ ▀▀█ █▄▄█ █▀▀▄ █░░█ ░░█░░ ▀▀ █▒█▒█ █░▒█
 █░░░ ▀░░▀ ▀░░▀ ░░▀░░ ▀░░▀ ▀▀▀ ▄▄▄█ █▄▄█ ▀▀▀▀ ░░▀░░ ░░ █░░▒█ █▄▄▀\n\e[0m"

echo -e "\033[1;35m"
git clone https://github.com/Wilsmac/FantasyBot-MD.git
echo -e "\033[01;32m\033[01mLa clonación se ha descargado e instalado correctamente.\n\033[0m"

echo -e "\033[01;32m\033[01mCambiando al directorio del repositorio!!\nChanging to the repository directory!!\n\033[0m" 
cd 𝐓𝐰𝐢𝐜𝐡𝐁𝐨𝐭-𝐌𝐃

echo -e "\e[36m
 █░▒█ █▀▀█ █▀▀▀ █▀▀█ ▀▀█▀▀ █▀▀▀         █░░▒█ █▀▀█ █▀▀█ █▄░▒█
 █░▒█ █▄▄█ █▀▀▀ █▄▄█ ░▒█░░ █▀▀▀         █▄▄▄█ █▄▄█ █▄▄▀ █▒█▒█
 ▀▄▄▀ █░░░ █░░░ █░▒█ ░▒█░░ █▄▄▄         ░▒█░░ █░▒█ █░▒█ █░░▀█\n\e[0m"

echo -e "\033[0;34mSe actualizará yarn automáticamente. Espere un momento por favor.\nIt will update yarn automatically. Wait a moment please.\n\033[0m"
if yarn install 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(yarn install 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar yarn. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
else
echo -e "\033[01;32m\033[01mYarn se ha actualizado correctamente.\n\033[0m" 
fi

echo -e "\e[35m
 ▀█▀ █▄░▒█ █▀▀▀█ ▀▀█▀▀ █▀▀█ █░░░ █▀▀█ █▀▀█         █▄░▒█ █▀▀█ █▀▄▀█
 ░█░ █▒█▒█ ▀▀▀▄▄ ░▒█░░ █▄▄█ █░░░ █▄▄█ █▄▄▀         █▒█▒█ █▄▄█ █▒█▒█
 ▄█▄ █░░▀█ █▄▄▄█ ░▒█░░ █░▒█ █▄▄█ █░▒█ █░▒█         █░░▀█ █░░░ █░░▒█\n\e[0m"

echo -e "\033[0;34mSe instalará NPM automáticamente. Espere un momento por favor.\n\033[0m"
if npm install 2>&1 >/dev/null | grep -E -i -q '(command not found|unable to locate package|E: Could not get lock|debconf: delaying package configuration|Package not found|Failed to fetch|404 Not Found|Hash sum mismatch|503 Service Unavailable|504 Gateway Timeout|408 Request Timeout|Connection timed out|Temporary failure resolving)'; then
error=$(npm install 2>&1 >/dev/null)
echo -e "\033[0;31mError: $error\033[0m" 
echo -e "\033[0;34mNo se pudo instalar NPM. Verifique su conexión a Internet e inténtelo de nuevo. Si el error continúa, instale de forma manual!!\nIf the error continues, install manually!!\033[0m" 
else
echo -e "\033[01;32m\033[01mNPM se ha instalado correctamente..\n\033[0m" 
fi


: <<'COMMENT'
v="${b}\033[1;32m"
v1="${b}\033[32m"
b="\033[0m"

menu() {
	#𝐓𝐰𝐢𝐜𝐡𝐁𝐨𝐭-𝐌𝐃
	echo -e "${v1} MENÚ DE CONFIGURACIÓN"
	printf "\n"
	printf "${v1}[${b}01${v1}]${v} Visistar Grupo de Actualizaciones\n"
	printf "\n"
	printf "${v1}[${b}02${v1}]${v} Elegir idioma español\n"
	printf "\n"
	printf "${v1}[${b}03${v1}]${v} Elegir idioma inglés\n"
	printf "\n"
	printf "${v1}[${b}04${v1}]${v} Continuar\n"
	printf "\n"
}

menu_ayuda() {
    #printf "${v1}[${b}++${v1}]${v} FantasyBot-MD${b}: "
	read opcion
	case $opcion in
            01|1)
                am start -a android.intent.action.VIEW https://chat.whatsapp.com/DVhu9S9Zr7cBFFl26N61U3 &>> /dev/null
                echo -e "${b}[${v1}++${b}]${v} Accediendo al Grupo Oficial\n"
                
                ;;
            02|2)
                echo -e "${b}[${v1}++${b}]${v} Seleccionado idioma español\n"
                
                ;;
            03|3)
                echo -e "${b}[${v1}++${b}]${v} Seleccionado idioma inglés\n"
                
                ;;
	    04|4)
	        iniciar
                echo -e "${b}[${v1}++${b}]${v} Continuando...\n"
                
                ;;
            *)
                echo -e "${v1}Comando: '"${r1}${opcion}${v1}"' invalido."
		echo ""
		inicio
                ;;
        esac
}

menu
menu_ayuda
COMMENT

clear
echo -e "\e[36m
 █▀▀█ █▀▀█ █▀▀█ █▀▀█ ▀█▀ █▀▀█ █▀▀▀█         █▀▀█ █▀▀▀█ █▀▀█         ▀▀█▀▀ █░▒█
 █░▄▄ █▄▄▀ █▄▄█ █░░░ ░█░ █▄▄█ ▀▀▀▄▄         █▄▄█ █░░▒█ █▄▄▀         ░▒█░░ █░▒█
 █▄▄█ █░▒█ █░▒█ █▄▄█ ▄█▄ █░▒█ █▄▄▄█         █░░░ █▄▄▄█ █░▒█         ░▒█░░ ▀▄▄▀

░█▀▀█ ░█▀▀█ ░█▀▀▀ ░█▀▀▀ ░█▀▀▀ ░█▀▀█ ░█▀▀▀ ░█▄─░█ ░█▀▀█ ▀█▀ ─█▀▀█ 
░█▄▄█ ░█▄▄▀ ░█▀▀▀ ░█▀▀▀ ░█▀▀▀ ░█▄▄▀ ░█▀▀▀ ░█░█░█ ░█─── ░█─ ░█▄▄█ 
░█─── ░█─░█ ░█▄▄▄ ░█─── ░█▄▄▄ ░█─░█ ░█▄▄▄ ░█──▀█ ░█▄▄█ ▄█▄ ░█─░█n\e[0m"

echo -e "\e[31m
┈┈┈┈┈┈┈┈┈┈┈┈┈┈
┈┈┈◢▇◣┈┈◢▇◣┈┈┈
┈┈┈▇▇▇◣◢▇▇▇┈┈┈
┈┈┈◥▇▇▇▇▇▇◤┈┈┈
┈┈┈┈◥▇▇▇▇◤┈┈┈┈
┈┈┈┈┈◥▇▇◤┈┈┈┈┈
┈┈┈┈┈┈◥◤┈┈┈┈┈┈\n\e[0m"
    
sleep 15 && pkill mpv > /dev/null 2>&1 && sleep 2 && rm -f /data/data/com.termux/files/home/"$random_mp3" &
echo -e "\033[01;32m\033[01mIniciando 𝐓𝐰𝐢𝐜𝐡𝐁𝐨𝐭-𝐌𝐃 by diegl\n\033[0m"
npm start
