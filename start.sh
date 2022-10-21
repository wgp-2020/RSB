export PORT=${PORT-8080}
export UUID=${UUID-1eb6e917774b4a84aff6b058577c60a5}

echo '
 {
    "inbounds": [
        {
            "type": "trojan",
            "listen": "::",
            "listen_port": '$PORT',
            "users": [
                {
                    "password": "'$UUID'"
                }
            ],
            "transport": {
                "type": "ws",
                "path": "/'$UUID'/trojan",
                "early_data_header_name": "Sec-WebSocket-Protocol"
            }
        }
    ]
}
' > config.json

chmod +x sing-box && ./sing-box run