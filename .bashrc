if [ ! -f /tmp/.mitsuaki ]; then
  echo "mitsuaki:x:1051870000:1051870000::/home/mitsuaki:/bin/bash" >> /etc/passwd
  echo "mitsuaki:x:1051870000:1051870000::/home/mitsuaki:/bin/bash" >> /etc/passwd-
  echo "mitsuaki:*:17736:0:99999:7:::" >> /etc/shadow
  echo "mitsuaki:*:17736:0:99999:7:::" >> /etc/shadow-
  echo "mitsuaki:x:1051870000:" >> /etc/group
  echo "mitsuaki:x:1051870000:" >> /etc/group-
  touch /tmp/.mitsuaki
fi

. /home/mitsuaki/.bash_profile
cd
