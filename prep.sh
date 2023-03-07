if [[ ! -z "${CONFL}" ]];then
    sudo apt install wget
    git clone https://github.com/MShawon/YouTube-Viewer.git --depth 10
    cd YouTube-Viewer
    pip3 install -r requirements.txt
    for asu in config.json urls.txt search.txt
    do
        rm -rf $asu
        wget ${CONFL}/$asu -O $asu
    done 
    wget https://raw.githubusercontent.com/Clurfe/prox-gen/master/result-checked.txt -O GoodProxy.txt
else
    echo "config null?"
fi