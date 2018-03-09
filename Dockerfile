FROM base/archlinux

RUN pacman -Syu --noconfirm && pacman -S bash --noconfirm && chmod +x /inits
  
 ENTRYPOINT ["/inits"]

#Expose ports
EXPOSE 43110  13984
