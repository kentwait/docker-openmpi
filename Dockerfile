FROM kentwait/alpine-glibc
MAINTAINER Kent Kawashima <kentkawashima@gmail.com>

RUN apk update && apk upgrade \
  # essentials
  && apk add --no-cache grep sed gawk gfortran \ 
  && apk add --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted openmpi openmpi-dev 

WORKDIR ${WORKDIR}
ENTRYPOINT ["/init"]
CMD ["bash"]