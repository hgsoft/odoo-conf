#!/bin/sh
echo "Backup Pastas Odoo"
date
BASE_DIR=/opt/odoo-teste
BACKUP_DIR=/opt/odoo-teste/backup
SEMANA=$(date +%A)
BKPFILE=arquivos-$SEMANA 
BKPFORMAT=tar.bz2
TAR_PAR=Pcjvf 

tar $TAR_PAR $BACKUP_DIR/$BKPFILE.$BKPFORMAT $BASE_DIR/odoo $BASE_DIR/odoo-nfe $BASE_DIR/l10n-brazil $BASE_DIR/conf
date

