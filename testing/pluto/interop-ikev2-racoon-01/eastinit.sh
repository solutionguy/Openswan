: ==== start ====
TESTNAME=interop-ikev2-racoon-01

mkdir /tmp/racoon2 /var/run/racoon2
chmod 700 /var/run/racoon2
cp -a /testing/pluto/$TESTNAME/east-racoon/* /tmp/racoon2/
chmod 700 /tmp/racoon2/psk/test.psk   

#racoon way of starting
/usr/local/racoon2/etc/init.d/spmd start
# no conns are loaded
/usr/local/racoon2/etc/init.d/iked start
sleep 3

echo done
