FROM alpine:latest
LABEL maintainer="0x187"
RUN apk add --update --no-cache openssh 
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN adduser -h /home/0x187 -s /bin/sh -D 0x187
RUN echo -n '0x187:1234' | chpasswd
ENTRYPOINT ["/keygen.sh"]
EXPOSE 22
COPY keygen.sh /