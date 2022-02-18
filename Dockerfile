FROM eclipse-temurin:17.0.1_12-jre-alpine
VOLUME /tmp
# timezone env with default
ENV TZ Europe/Berlin

RUN apk -U --no-cache upgrade
RUN mkdir /config
COPY examples/build/libs/cr-connect-bot-0.0.1.jar cr-connect-bot.jar
ENTRYPOINT ["java", \
"-Xmx300m", \
"-jar", \
"/cr-connect-bot.jar"]
EXPOSE 18081
