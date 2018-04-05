FROM starkmapper/compiler-explorer:latest
USER root
RUN chown -R root /home/gcc-user
RUN apt-get update &&\
  apt-get install -y vim
COPY run.sh /
RUN make install-git-hooks
RUN git checkout -- . && \
  git config --global user.email "stark@stapta.nl" &&\
  git config --global user.name "Mark Stapper"

CMD ["/run.sh"]