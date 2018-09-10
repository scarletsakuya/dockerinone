#!/bin/bash

sed -i "s/\[VMESS_PORT\]/${VMESS_PORT}/g" /etc/v2ray/config.json
sed -i "s/\[VMESS_ID\]/${VMESS_ID}/g" /etc/v2ray/config.json
sed -i "s/\[VMESS_LEVEL\]/${VMESS_LEVEL}/g" /etc/v2ray/config.json
sed -i "s/\[VMESS_ALTERID\]/${VMESS_ALTERID}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_PORT_VMESS\]/${KCP_PORT_VMESS}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_MUT\]/${KCP_MUT}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_TTI\]/${KCP_TTI}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_UPLINK\]/${KCP_UPLINK}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_DOWNLINK\]/${KCP_DOWNLINK}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_READBUFF\]/${KCP_READBUFF}/g" /etc/v2ray/config.json
sed -i "s/\[KCP_WRITEBUFF\]/${KCP_WRITEBUFF}/g" /etc/v2ray/config.json

for i in "$@"; do
	bash $i
done

/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
