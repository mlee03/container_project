FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -yqq update                          \
 && apt-get -yqq install --no-install-recommends \
        wget           \
        git            \
        autotools-dev  \
        automake       \
        libtool        \
        make           \
        libssl-dev     \
        openssh-server \
 && apt-get -y install software-properties-common      \
 && add-apt-repository -y ppa:ubuntu-toolchain-r/test  \
 && apt-get install -yqq gcc-9 gfortran-9 g++-9        \
 && apt-get -y remove gcc-7                            \
 && update-alternatives --install /usr/bin/gcc      gcc /usr/bin/gcc-9  9          \
 && update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-9 9 \
 && update-alternatives --install /usr/bin/g++      g++ /usr/bin/g++-9 9           \
 && add-apt-repository -y -r ppa:ubuntu-toolchain-r/test \
 && apt-get remove -y software-properties-common         \
 && rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["/bin/bash"]