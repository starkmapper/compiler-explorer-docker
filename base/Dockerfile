FROM mattgodbolt/compiler-explorer:base
RUN curl -s https://raw.githubusercontent.com/mattgodbolt/compiler-explorer-image/master/update_compilers/common.inc > /root/common.inc &&\
  curl -s https://raw.githubusercontent.com/mattgodbolt/compiler-explorer-image/master/update_compilers/install_binaries.sh > /root/install_binaries.sh &&\
  chmod +x /root/install_binaries.sh &&\
  /root/install_binaries.sh 
  #&&\
  #curl -s https://raw.githubusercontent.com/mattgodbolt/compiler-explorer-image/master/docker/unified-explorer/run.sh > /run.sh &&\
  #chmod +x /run.sh &&\
  #curl -s https://raw.githubusercontent.com/mattgodbolt/compiler-explorer-image/master/site-prod.sh > /site.sh