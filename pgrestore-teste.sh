#!/bin/bash
# pgrestore-teste.sh - Automação de Restore de Testes do Odoo
# Criado em 2015-07-27 por Alexsandro Haag (alex@hgsoft.com.br)
# Obs.: Deve ser rodado o script com o usuario odoo

CAMINHO_BACKUP=/tmp
BASE_OFICIAL=udbras
BASE_TESTE=udbras-teste
DATAATUAL=$(date +%Y%m%d)

echo "Backup da base de Produção"
pg_dump -b --format=c -d $BASE_OFICIAL -v -f $CAMINHO_BACKUP/$BASE_OFICIAL-$DATAATUAL.backup

echo "Apagando a base de testes"
dropdb $BASE_TESTE

echo "Recriando a base de testes"
createdb $BASE_TESTE

echo "Restaurando a partir do backup"
pg_restore --format=c -d $BASE_TESTE $CAMINHO_BACKUP/$BASE_OFICIAL-$DATAATUAL.backup -v

echo "Restauração da Teste Realizada!"
