FROM base/archlinux

RUN pacman -S bash --noconfirm
  
  CMD ["bash", "while :; do     sleep 3600; done"]


#Expose ports
EXPOSE 43110  13984
