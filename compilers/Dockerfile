FROM starkmapper/compiler-explorer:base
# Add linux compilers
ADD compilers.tgz /
ADD *-bin.tar.gz *-include.tar.gz /opt/compiler-explorer/windows/
ADD winedir.tgz /home/gcc-user

RUN  apt-get update && \
  apt-get install -y \
  # STL 
  libstdc++-5-dev \
  lib32stdc++-5-dev &&\
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*