if [[ ! -z "${CONFL}" ]];then
    sudo apt install wget
    git clone https://github.com/MShawon/YouTube-Viewer.git --depth 10
    cd YouTube-Viewer
    pip3 install -r requirements.txt
    GETIT="${@}"
    for asu in config.json urls.txt search.txt
    do
        rm -rf $asu
        if [[ ! -z "${GETIT}" ]];then
            filename="$(echo "${asu}" |awk -F '.' '{print $1}')"
            ext="$(echo "${asu}" |awk -F '.' '{print $2}')"
            wget "${CONFL}/${filename}${GETIT}.${ext}" -O $asu
        else
            wget ${CONFL}/$asu -O $asu
        fi
    done 
else
    echo "config null?"
fi