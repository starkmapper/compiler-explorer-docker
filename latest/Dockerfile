FROM stark/compiler-explorer:compilers
RUN git clone https://github.com/mattgodbolt/compiler-explorer.git ./ &&\
  sed -i 's|--exec $(NODE) $(NODE_ARGS) -- ./app.js $(EXTRA_ARGS)||' /compiler-explorer/Makefile &&\
  make
  
ENTRYPOINT [ "/opt/compiler-explorer/node/bin/node", "/compiler-explorer/app.js" ]