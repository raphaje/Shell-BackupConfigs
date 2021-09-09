#!/bin/bash
############################################
#                                          #
#  Script criado para backup dos primax    #
#  roda diariamente as 4:00                #
#   Raphael Jeronimo                       #
#        05/07/2010                        #
#############################################

HOST_ADDR="192.168.0.1"
USER="seu_User"
FOLDER_REMOTE="/home/backups"
TIMESTAMP="`date +%Y%m%d_%H%M%S`"
HOSTNAME="`hostname -s`"
SSH_PORT="22"
SAVE_BACKUP="/var/www/html/backup/"
NAME=bck-`hostname`-$(date +"%Y-%m-%d-%H%M%S")
DIRECTORY=/tmp/$NAME
mkdir $DIRECTORY
mkdir $DIRECTORY/network

echo "Iniciando o Backup"

        cp -R /etc/asterisk $DIRECTORY/asterisk
        cp /etc/sysconfig/network-scripts/ifcfg-eth* $DIRECTORY/network
        cp /etc/hosts $DIRECTORY/network/
        cp /etc/sysconfig/network $DIRECTORY/network
        cp -R /etc/dahdi $DIRECTORY/dahdi

        tar zcvf /var/www/html/backup/$NAME.tar.gz $DIRECTORY



        ssh -o "StrictHostKeyChecking=no" -p $SSH_PORT $USER@$HOST_ADDR 'mkdir '$FOLDER_REMOTE/' 2>/dev/null'
        scp -o "StrictHostKeyChecking=no" -P $SSH_PORT "$SAVE_BACKUP"/"$NAME".tar.gz "$USER"@"$HOST_ADDR":"$FOLDER_REMOTE"
        echo "Backup Concluido"