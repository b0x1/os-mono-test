FROM mono

RUN git clone https://github.com/mono/xsp.git /opt/xsp
RUN cd /opt/xsp && ./autogen.sh && ./configure --prefix=/usr && make && make install
RUN rm -rf /opt/xsp
#RUN apk del mono-dev git bash automake autoconf findutils make pkgconf libtool g++
