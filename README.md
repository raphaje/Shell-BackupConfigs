Script backup-sys.sh 

COnfiguração e utilização

OBS: Gere chave ssh entre o servidor que irá armazenar os backups e o servidor cliente para autenticação sem senha, assim o script realiza o backup e envia automaticamente.


HOST_ADDR       ;; Adicione aqui o ip do servidor que irá receber e armazenar o backup
USER            ;; Usuário que ferá autenticação
FOLDER_REMOTE   ;; Diretório no servidor de armazenamento onde ficará salvo o backup
SSH_PORT        ;; Porta ssh do servidor de armazanamento
SAVE_BACKUP     ;; Diretório no servidor cliente onde será salvo após o script backup ser executado


Será feito backup dos diretórios e arquivos abaixo.

/etc/asterisk
/etc/sysconfig/network-scripts/ifcfg-eth*
/etc/hosts
/etc/sysconfig/network
/etc/dahdi