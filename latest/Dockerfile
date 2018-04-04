FROM starkmapper/compiler-explorer:compilers
USER gcc-user
RUN git clone --branch bcc https://github.com/starkmapper/compiler-explorer.git ./ &&\
  sed -i 's|--exec $(NODE) $(NODE_ARGS) -- ./app.js $(EXTRA_ARGS)||' /compiler-explorer/Makefile &&\
  make

ADD *.local.properties /compiler-explorer/etc/config/
ADD run.sh /

CMD ["/run.sh"]