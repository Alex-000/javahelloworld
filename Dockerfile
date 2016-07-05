FROM java:7

MAINTAINER j1

ENV FOO bar

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin && javac -d bin src/HelloWorld.java

RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
