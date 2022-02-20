FROM eclipse-temurin:17-jre-alpine
VOLUME /tmp
# timezone env with default
ENV TZ Europe/Berlin

RUN apk -U --no-cache upgrade
RUN mkdir /config
COPY examples/build/libs/cr-connect-bot-0.0.1.jar cr-connect-bot.jar
COPY examples/src/main/kubernetes/startLocalLeaderAndWorker.sh start.sh
CMD ./start.sh
