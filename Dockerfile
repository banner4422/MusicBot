ARG JAVA_VERSION=11
FROM openjdk:$JAVA_VERSION-jre

ARG MUSICBOT_VERSION=0.3.6
RUN wget "https://github.com/jagrosh/MusicBot/releases/download/$MUSICBOT_VERSION/JMusicBot-$MUSICBOT_VERSION.jar" -O /JMusicBot.jar

CMD ["java", "-Dnogui=true", "-jar", "/JMusicBot.jar"]