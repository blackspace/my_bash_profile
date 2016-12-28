paths=($(find ~/app -name sqlplus))

p=${paths[0]%sqlplus}

if [ -n "p" ]; then
    export LD_LIBRARY_PATH=$p:$LD_LIBRARY_PATH
    export PATH=$p:$PATH
fi

