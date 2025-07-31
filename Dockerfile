FROM alpine
RUN apk add --no-cache curl
COPY trigger-6am.sh /trigger-6am.sh
RUN chmod +x /trigger-6am.sh
CMD ["/trigger-6am.sh"]
