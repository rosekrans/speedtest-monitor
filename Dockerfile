FROM python:3.8-slim-buster
#FROM python:3.8
#FROM python:alpine

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive

# Final setup & execution
VOLUME /app
COPY speedtestlat.py /app/speedtestlat.py
WORKDIR /app

COPY requirements.txt /
COPY requirements.txt /app

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get -q -y install --no-install-recommends apt-utils gnupg1 apt-transport-https dirmngr && \
    apt-get install curl &&\
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash &&\
    apt-get install speedtest &&\
    apt-get -q -y autoremove && \
    apt-get -q -y clean && \
    rm -rf /var/lib/apt/lists/* 

    
RUN pip3 install -r requirements.txt

# Add hello scripts
#ADD sayhello /sayhello
#RUN chmod +x /sayhello

# Add docker-compose-wait tool -------------------
#ENV WAIT_VERSION 2.7.2
#ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
#RUN chmod +x /wait

#CMD ["/sayhello"]

CMD ["python3", "-u", "speedtestlat.py"]
#CMD ["/bin/bash"]
