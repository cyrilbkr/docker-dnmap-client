FROM debian

MAINTAINER Cyril Becker cyril@p33.fr

ENV SERVER=localhost

WORKDIR /root

ADD https://sourceforge.net/projects/dnmap/files/latest/download /root

RUN  apt-get update && apt-get -y install nmap python python-openssl python-twisted tar 
RUN  tar -xvf download  
RUN  mv dnmap_v0.6 /opt/dnmap 
RUN  apt-get clean   
RUN  rm -f download && rm -rf /var/lib/apt/lists/*   

ENTRYPOINT python /opt/dnmap/dnmap_client.py  -s $SERVER
