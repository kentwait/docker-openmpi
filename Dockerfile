FROM phusion/baseimage:0.9.18
MAINTAINER Kent Kawashima <kentkawashima@gmail.com>

# Ubuntu update
RUN apt-get update --fix-missing --quiet && apt-get install -y build-essential \
	wget bzip2 git curl grep sed dpkg \
	python-dev python3-dev gfortran

# Install OpenMPI
RUN apt-get install -y libopenmpi-dev openmpi-bin

WORKDIR ${WORKDIR}
ENTRYPOINT ["/init"]
CMD ["bash"]