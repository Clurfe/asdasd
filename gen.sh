if [[ ! -z "${CONFL}" ]];then
    cd YouTube-Viewer
    pip install -U git+https://github.com/bluet/proxybroker2.git
    proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 40 -c ID -o get.txt
    cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' > GoodProxy.txt
    proxybroker find --types HTTP HTTPS SOCKS4 SOCKS5 -l 700 -o get.txt
    cat get.txt | awk -F "] " '{print $2}' | awk -F ">" '{print $1}' >> GoodProxy.txt
else
    echo "config null?"
fi