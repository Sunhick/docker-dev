FROM ubuntu:16.04

MAINTAINER sunil <sunhick@gmail.com>

RUN apt-get update -q
# RUN apt-get install -yq emacs
# RUN apt-get install -yq gcc

# Required for c++17
RUN apt-get install build-essential software-properties-common -y && add-apt-repository ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install gcc-6 g++-6 -y

# Install bazel
RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt-get install -y curl
RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN apt-get update
RUN apt-get install -y bazel

CMD ["bash"]

#RUN mkdir -p /home/me

#ADD wait.sh /home/me/wait.sh
#RUN chmod +x /home/me/wait.sh

# Attach a volume for persistant storage
# ADD . /home/mac

# CMD ["/home/me/wait.sh"]
