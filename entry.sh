#!/bin/sh

set -x
set -e

#if [ -z "${USERNAME}" ]; then
#  echo "You have to specify the -e USERNAME=... argument"
#  exit
#fi
#if [ -z "${PASSWORD}" ]; then
#  echo "You have to specify the -e PASSWORD=... argument"
#  exit
#fi
USERNAME=squid
PASSWORD=$(openssl rand -base64 12)

htpasswd -cb /etc/squid/passwd "${USERNAME}" "${PASSWORD}"

exec $(which squid) -NYCd 1

echo "+++++++++++++++++++++++++++++++++++"

echo $USERNAME

echo "+++++++++++++++++++++++++++++++++++"

echo "/\/\/\/\/\/\\/\/\/\/\/\\/\/\/\\/\/\/\/\/\/\"

echo $PASSWORD

echo "+++++++++++++++++++++++++++++++++++"
