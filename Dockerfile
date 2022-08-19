FROM debian:stable-slim
ADD funtranslate.sh /
RUN chmod +x /funtranslate.sh
RUN apt-get update \ 
    && apt-get install wget gawk bsdmainutils -y \ 
    && wget git.io/trans && chmod +x trans \
    && mv trans /usr/local/bin/
ENTRYPOINT [ "/bin/bash", "/funtranslate.sh" ]