FROM starkmapper/compiler-explorer:latest
USER root
RUN chown -R root /home/gcc-user
RUN apt-get update &&\
  apt-get install -y vim
COPY run.sh /
RUN make install-git-hooks
CMD ["/run.sh"]