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
      iptables -t nat -D PREROUTING -p tcp --dport 80 -j DNAT --to-destination IP_Cloud OR IP_ServerOtherNet:8080
    ;;
    *)
      echo "Usage: $0 (enable|disable)"
      exit 1
    ;;
esac