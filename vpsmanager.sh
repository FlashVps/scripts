#!/bin/bash
#By Haboryn
rm configurar.sh
clear
echo " "
echo "              --------------------"
echo -e '\033[01;32m              O que deseja fazer ?\033[00;37m'
echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
echo -e '   Digite \033[01;32m1\033[00;37m para configurar servidor'
echo " "
echo -e '   Digite \033[01;32m2\033[00;37m para ligar o monitoramento'
echo "   de conexões SSH e validade dos usuários OpenVPN"
echo " "
echo -e '   Digite \033[01;32m3\033[00;37m para Liberar o Torrent'
echo " "
echo -e '   Digite \033[01;32m4\033[00;37m para Bloquear o Torrent'
echo " "
echo -e '   Digite \033[01;32m5\033[00;37m para ver os o usuários online'
echo " "
echo -e '   Digite \033[01;32m6\033[00;37m para criar ou gerenciar logins SSH'
echo " "
echo -e '   Digite \033[01;32m7\033[00;37m para criar ou gerenciar usuários OpenVPN'
echo " "
echo -e '   Digite \033[01;32m8\033[00;37m para criar ou renovar Validade SSH/OpenVPN'
echo " "
echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
echo " "
read -p "Responda: " -e -i 6 resposta
if [[ "$resposta" = '1' ]]; then
        rm configurar.sh
        wget https://sshhaboryn.com.br/configurar.sh
        chmod +x configurar.sh
        clear
        ./configurar.sh
        rm configurar.sh
elif [[ "$resposta" = '2' ]]; then
        clear
        echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
        echo "Esta opção irá ligar o monitoramento 24hs de usuários"
	echo "Verificando quais usuários que expiraram a validade da conta do"
	echo "OpenVPN e ou SSH, e os que estiverem com contas expiradas serão"
	echo "Deletados automaticamente. Este monitoramento também restringe o limite"
	echo "de conexões simultâneas dos logins SSH, então certifique-se se realmente este"
        echo "monitoramento foi ou não ativado anteriormente..."
        echo " "
        echo "Caso queira iniciar o monitoramento agora digite s (para sim)"
        echo "Ou Caso não queira ou já tenha ligado este monitoramento digite n (para não)"
        echo -e '\033[05;31m--------------------------------------------------------\033[00;37m'
        echo " "
        read -p "Responda [s/n]: " -e -i n monitoramento
        if [[ "$monitoramento" = 's' ]]; then
                clear
                rm multlogins.sh
                wget https://raw.githubusercontent.com/haborynn/scripts/script/multlogins.sh
                chmod +x multlogins.sh
                ./multlogins.sh
        else
                exit
        fi
elif [[ "$resposta" = '3' ]]; then
        rm torrent.sh
        wget https://sshhaboryn.com.br/torrent.sh
        chmod +x torrent.sh
        clear
        ./torrent.sh
        rm torrent.sh
elif [[ "$resposta" = '4' ]]; then
        rm firewall.sh
        wget https://sshhaboryn.com.br/firewall.sh
        chmod +x firewall.sh
        clear
        ./firewall.sh
        rm firewall.sh
elif [[ "$resposta" = '5' ]]; then
        rm conexoes.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/conexoes.sh
        chmod +x conexoes.sh
        ./conexoes.sh
        rm conexoes.sh
elif [[ "$resposta" = '6' ]]; then
        rm loginnew2.0.sh
        rm loginnew.sh
        wget https://raw.githubusercontent.com/haborynn/scripts/script/loginnew2.0.sh
        chmod +x loginnew2.0.sh
        ./loginnew2.0.sh
        rm loginnew2.0.sh
elif [[ "$resposta" = '7' ]]; then
        rm gerenciadoropen.sh
        wget https://sshhaboryn.com.br/gerenciadoropen.sh
        chmod +x gerenciadoropen.sh
        clear
        ./gerenciadoropen.sh
        rm gerenciadoropen.sh
elif [[ "$resposta" = '8' ]]; then
        rm mudarvalidade.sh
        wget https://sshhaboryn.com.br/mudarvalidade.sh
        chmod +x mudarvalidade.sh
        clear
        ./mudarvalidade.sh
        rm mudarvalidade.sh
else
        echo "Opção Invalida!"
        exit
fi