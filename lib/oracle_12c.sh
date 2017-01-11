export ORACLE_OWNER=apple
export ORACLE_HOME=/home/apple/app/apple/product/12.1.0/dbhome_1
export ORACLE_SID=orcl
export PATH=$ORACLE_HOME/bin:$PATH
export NLS_LANG="SIMPLIFIED CHINESE_CHINA.UTF8"

LOGIN=$MBP_ROOT/lib/login.sql
HOME_LOGIN=~/login.sql

cat >$LOGIN <<EOF
set SERVEROUTPUT ON
DEFINE _EDITOR='vi'
EOF

if [[ -e $HOME_LOGIN && ! -L $HOME_LOGIN ]]; then
    rm $HOME_LOGIN
fi

if ! [ -L ~/login.sql ]; then
    ln -s $LOGIN ~
fi

alias sqlplus="rlwrap sqlplus" 
