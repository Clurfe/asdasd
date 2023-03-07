if [[ ! -z "${CONFL}" ]];then
    cd YouTube-Viewer
    python3 youtube_viewer.py
else
    echo "config null?"
fi