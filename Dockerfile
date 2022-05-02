FROM ubuntu:20.04

# You may need to configure the time zone
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install minimal packages to prepare Hexo
RUN apt-get update && \
    apt-get install -y git-core npm wget

# Install Pandoc using deb package
RUN wget https://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-1-amd64.deb
RUN apt-get install -y ./pandoc-2.18-1-amd64.deb

# Copy script for GitHub Action
COPY entrypoint.sh /entrypoint.sh

# Configure entrypointo for GitHub Action
ENTRYPOINT ["/entrypoint.sh"]
