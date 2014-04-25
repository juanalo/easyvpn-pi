#!/bin/bash

PACKETS=""
   
   if ! type openvpn >/dev/null 2>&1
      then
       PACKETS="openvpn"
	   echo "Openvpn is going to install"
     else
	PACKETS="no OPENVPN"	
   fi
   if [ type openssl >/dev/null 2>&1 ]
     then
       PACKETS="$PACKETS openssl"
	   echo "Openssl is going to install"
   fi
   if [ type zip >/dev/null 2>&1 ]
     then
       PACKETS="$PACKETS zip"
	   echo "Zip is going to install"
   fi

echo "Variable packets: $PACKETS"
