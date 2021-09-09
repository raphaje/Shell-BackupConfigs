Script backup-sys.sh 

Configuração e utilização

OBS: Gere chave ssh entre o servidor que irá armazenar os backups e o servidor cliente para autenticação sem senha, assim o script realiza o backup e envia automaticamente.


HOST_ADDR -> Adicione aqui o ip do servidor que irá receber e armazenar o backup. </br>
USER -> Usuário que ferá autenticação. </br>
FOLDER_REMOTE -> Diretório no servidor de armazenamento onde ficará salvo o backup. </br>
SSH_PORT -> Porta ssh do servidor de armazanamento. </br>
SAVE_BACKUP -> Diretório no servidor cliente onde será salvo após o script backup ser executado.

Será feito backup dos diretórios e arquivos abaixo.

/etc/asterisk </br>
/etc/sysconfig/network-scripts/ifcfg-eth* </br>
/etc/hosts </br>
/etc/sysconfig/network </br>
/etc/dahdi </br>
