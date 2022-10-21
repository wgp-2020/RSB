FROM alpine

COPY ./ /
WORKDIR /

CMD chmod +x start.sh && ./start.sh