if [[ $# -eq 0 ]] ; then
    echo "Usage: $0 (enable|disable)"
    exit 1
fi

action="$1"
case $action in
    enable)
      echo "Enabling ..."
      iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination IP_Cloud OR IP_ServerOtherNet:8080
      iptables -t nat -A POSTROUTING -j MASQUERADE
    ;;
    disable)
      echo "Disabling ..."
      iptables -t nat -D PREROUTING -p tcp --dport 8eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MTE5NTc0MjIsInVzZXJfbmFtZSI6Ii
tCRUJ5S2tDMzgxNTRBPT0iLCJzY29wZSI6WyJyZWFkIiwidHJ1c3QiLCJ3cml0ZSJdLCJkZXRhaWxzIj
p7InRpbWVzdGFtcCI6MTUxMTg3MTAyMjg3NiwiY2hhbm5lbCI6ImFwcCJ9LCJhdXRob3JpdGllcyI6Wy
JST0xFX1VTRVIiXSwiYXVkIjpbInJlc3RfYXBpIl0sImp0aSI6IjdiNTBiMzVkLTI4NTUtNGQ0Ny04Mj
g3LWE2MTQ0ZDRhM2ViMiIsImNsaWVudF9pZCI6IkFwcCNUZXN0In0.7fkw88K9G_6vDxflG91WCnsW9L
Mjd4kr5b3sgBhrHAU0 -j DNAT --to-destination IP_Cloud OR IP_ServerOtherNet:8080
    ;;
    *)
      echo "Usage: $0 (enable|disable)"
      exit 1
    ;;
esac