if [[ ! -z "${CONFL}" ]];then
    cd YouTube-Viewer
    python3 prox_check2.py
else
    echo "config null?"
fi