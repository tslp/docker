FROM base/archlinux

RUN pacman -Syu --noconfirm && pacman -S bash --noconfirm && COPY inits /bin/inits && chmod +x /bin/inits
  
 ENTRYPOINT ["/inits"]

#Expose ports
EXPOSE 43110  13984
