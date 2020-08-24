FROM ubuntu:bionic

ARG USER_ID
ARG GROUP_ID
ARG VERSION

ENV USER ucacoin
ENV COMPONENT ${USER}
ENV HOME /${USER}

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -g ${GROUP_ID} ${USER} \
	&& useradd -u ${USER_ID} -g ${USER} -s /bin/bash -m -d ${HOME} ${USER}

# grab gosu for easy step-down from root
ENV GOSU_VERSION 1.11
RUN set -x \
	&& apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		wget \
	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu \
	&& gosu nobody true \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN set -x \
    && wget -O /tmp/tmp.${COMPONENT}.tar.gz "https://github.com/ucacoin/Ucacoin2/releases/download/v${VERSION}/ucacoind_ubuntu1804.tar.gz" 
RUN cd /tmp/ \
    && tar xvf tmp.${COMPONENT}.tar.gz 
RUN ls -la /tmp/ && mkdir /opt/${COMPONENT} \
    && mv /tmp/ucacoin* /opt/${COMPONENT} \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 33210 33211

VOLUME ["${HOME}"]
WORKDIR ${HOME}
ADD ./docker /usr/local/bin
RUN chmod -R +x /usr/local/bin/
RUN chmod -R +x /opt/${COMPONENT}/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD start-unprivileged.sh
