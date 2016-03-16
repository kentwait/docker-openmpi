FROM phusion/baseimage:0.9.18
MAINTAINER Kent Kawashima <kentkawashima@gmail.com>

# Ubuntu update
RUN apt-get update --fix-missing && apt-get install -y build-essential \
	wget bzip2 git curl grep sed dpkg

# Install OpenMPI
RUN apt-get install -y libopenmpi-dev openmpi-bin

CMD [ "/bin/bash" ]