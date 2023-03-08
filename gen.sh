if [[ ! -z "${CONFL}" ]];then
    GETIT="${@}"
    if [[ ! -z "${GETIT}" ]];then
        wget https://raw.githubusercontent.com/Clurfe/prox-gen/master/result-checked_v2.txt -O YouTube-Viewer/GoodProxy.txt
    else
        wget https://raw.githubusercontent.com/Clurfe/prox-gen/master/result-checked.txt -O YouTube-Viewer/GoodProxy.txt
    fi
else
    echo "config null?"
fi