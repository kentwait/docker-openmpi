FROM kentwait/alpine-glibc
MAINTAINER Kent Kawashima <kentkawashima@gmail.com>

RUN apk update && apk upgrade \
  # essentials
  && apk add --no-cache grep sed gawk gfortran openmpi openmpi-dev

WORKDIR ${WORKDIR}
ENTRYPOINT ["/init"]
CMD ["bash"]