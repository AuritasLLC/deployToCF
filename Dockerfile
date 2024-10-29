FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    curl \
    jq \
    ca-certificates \
    gnupg

RUN echo "deb https://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN curl -L "https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key" | apt-key add -
RUN apt-get update && apt-get install -y cf7-cli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
