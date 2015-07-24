#!/bin/bash
# pgbackup.sh - Backup do PostgreSQL
# Criado em 2015-05-04 por Alexsandro Haag (alex@hgsoft.com.br)

BACKUP_DIR=/opt/odoo-teste/backup
TEMP_DIR=/tmp
DMPFILE=bases.backup
LOGFILE=pgbackup.log
SEMANA=$(date +%A)
BKPFILE=bases-$SEMANA

BKPFORMAT=tar.bz2
TAR_PAR=Pcjvf

date
rm -rf $BACKUP_DIR/$BKPFILE.$BKPFORMAT
/usr/bin/pg_dumpall --no-password --verbose --file "$TEMP_DIR/$DMPFILE" > $TEMP_DIR/$LOGFILE
tar $TAR_PAR $BACKUP_DIR/$BKPFILE.$BKPFORMAT $TEMP_DIR/$DMPFILE $TEMP_DIR/$LOGFILE
rm -rf $TEMP_DIR/$DMPFILE
rm -rf $TEMP_DIR/$LOGFILE
date

