useradd -m ${USER} --uid=${UID} && echo "${USER}:${PASS}" | chpasswd
chown -R ${USER} ${SCRIPTS}