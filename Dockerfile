FROM alpine:3.16
RUN wget -O /usr/local/bin/mango https://github.com/getmango/Mango/releases/download/v0.27.0/mango &&\
	chmod +x /usr/local/bin/mango
COPY mango-config.yml /etc
EXPOSE 9000
STOPSIGNAL SIGQUIT
VOLUME /data
ENTRYPOINT ["mango", "-c", "/etc/mango-config.yml"]
