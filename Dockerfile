FROM java:7

ADD SimianArmy /SimianArmy
WORKDIR /SimianArmy
RUN ./gradlew build
VOLUME /SimianArmy/src/main/resources
EXPOSE 8080
CMD ./gradlew jettyRun

