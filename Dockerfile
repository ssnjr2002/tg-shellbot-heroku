FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    python \
    python-pip \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
 && mkdir -p -vv /stuff

# Set work dir:
WORKDIR /home

# Copy files:
COPY startbot.sh /home/
COPY startup.sh /home/
COPY extras.sh /home/
COPY /stuff /stuff

# Run extras.sh and clean up APT:
RUN sh /home/extras.sh \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN git clone https://github.com/botgram/shell-bot.git \
 && cd shell-bot \
 && npm install

# Run bot script:
CMD bash /home/startbot.sh
