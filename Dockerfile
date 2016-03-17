FROM phusion/baseimage:0.9.18
MAINTAINER Kent Kawashima <kentkawashima@gmail.com>

# Ubuntu update
RUN apt-get update --fix-missing --quiet && \
    apt-get install -q -y build-essential \
	                      wget \
	                      bzip2 \
	                      git \
	                      curl \
	                      grep \
	                      sed \
	                      dpkg \
	                      gfortran \
	                      libopenmpi-dev \
	                      openmpi-bin

CMD [ "/bin/bash" ]