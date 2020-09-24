FROM ubuntu:19.10
MAINTAINER nicolas.boettcher@mail.udp.cl

WORKDIR /tmp

RUN apt-get -yqq update \
    && apt-get clean \
    && apt-get install -yqq build-essential git byobu speedometer

RUN cd /tmp;git clone https://github.com/dragonxtek/udt;cd /tmp/udt \
    && make; make install
RUN echo "export LD_LIBRARY_PATH=/tmp/udt/src:$LD_LIBRARY_PATH" >> ~/.bashrc \
    && echo "export PATH=/tmp/udt/app:$PATH" >> ~/.bashrc;bash --

RUN dd if=/dev/zero of=10K.dat bs=1K count=10

ENV LD_LIBRARY_PATH=/tmp/udt/src:$LD_LIBRARY_PATH
ENV PATH=/tmp/udt/app:$PATH

ADD run.sh /tmp
RUN chmod +x run.sh
CMD /tmp/run.sh
