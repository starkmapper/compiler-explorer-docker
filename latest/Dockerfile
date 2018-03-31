FROM stark/compiler-explorer:compilers
USER gcc-user
RUN git clone --branch bcc https://github.com/starkmapper/compiler-explorer.git ./ &&\
  sed -i 's|--exec $(NODE) $(NODE_ARGS) -- ./app.js $(EXTRA_ARGS)||' /compiler-explorer/Makefile &&\
  make

ADD c++.local.properties /compiler-explorer/etc/config/

#ENTRYPOINT [ "/opt/compiler-explorer/node/bin/node", "/compiler-explorer/app.js" ]