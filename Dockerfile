FROM base/archlinux

RUN pacman -Syu --noconfirm && pacman -S bash --noconfirm 
COPY inits /sbin/inits 
RUN chmod +x /sbin/inits
  
 ENTRYPOINT ["/sbin/inits"]

#Expose ports
EXPOSE 43110  13984
