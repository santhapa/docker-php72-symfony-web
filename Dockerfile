FROM phpdockerio/php72-cli

RUN apt-get update && apt-get install php7.2-mysql -y

RUN apt-get install curl -y && curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*