FROM eclipse-temurin:17.0.1_12-jre-alpine
VOLUME /tmp
# timezone env with default
ENV TZ Europe/Berlin

RUN apk -U --no-cache upgrade
RUN mkdir /config
COPY examples/build/libs/ExampleRSocketLeader-0.0.1.jar connectRSocketLeader.jar
COPY examples/build/libs/ExampleRSocketWorker-0.0.1.jar connectRSocketWorker.jar
COPY examples/build/libs/ExampleSingleConnect-0.0.1.jar singleConnect.jar
COPY examples/build/libs/ExampleSingleWithConnection-0.0.1.jar singleWithConnection.jar
ENTRYPOINT ["java", \
"-Xmx300m", \
"-jar", \
"/singleConnect.jar"]
EXPOSE 18081
