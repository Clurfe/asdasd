if [[ ! -z "${CONFL}" ]];then
    sudo apt update && sudo apt install wget
    git clone https://github.com/MShawon/YouTube-Viewer.git --depth 10
    cd YouTube-Viewer
    python3 -m pip install --upgrade pip wheel
    pip3 install "setuptools<59"
    pip3 install -r requirements.txt
    for asu in config.json new.txt urls.txt search.txt
    do
        rm -rf $asu
        wget ${CONFL}/$asu -O $asu
    done 
    wget https://raw.githubusercontent.com/Clurfe/prox-gen/master/result.txt -O GoodProxy.txt
else
    echo "config null?"
fi