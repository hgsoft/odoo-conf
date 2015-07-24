#!/bin/bash
# make-init.sh - Cria os scripts de Inicialização
# Criado em 2015-07-24 por Alexsandro Haag (alex@hgsoft.com.br)

INIT_DIR=/etc/init.d
CONF_DIR=/opt/odoo/odoo-conf
DAEMON_NAME=odoo
DAEMON_NUMBER=99

date
ln -s $CONF_DIR/odoo.init $INIT_DIR/$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc2.d/S$DAEMON_NUMBER$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc3.d/S$DAEMON_NUMBER$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc4.d/S$DAEMON_NUMBER$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc5.d/S$DAEMON_NUMBER$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc6.d/K$DAEMON_NUMBER$DAEMON_NAME
ln -s $INIT_DIR/odoo.init $INIT_DIR/../rc0.d/K$DAEMON_NUMBER$DAEMON_NAME
echo "Scripts de Inicialização Habilitados!

