FROM centos:7

RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum makecache \
    && yum install -y wget SDL-devel SDL_mixer-devel gcc g++ python2-scons physfs-devel mesa-libGLU-devel mesa-libGL-devel \
    && yum clean all \
    && wget https://www.dxx-rebirth.com/download/dxx/rebirth/d1x-rebirth_v0.58.1-src.tar.gz \
    && tar xzf d1x-rebirth_v0.58.1-src.tar.gz \
    && cd d1x-rebirth_v0.58.1-src \
    && scons
