FROM golang:1.19
RUN git clone https://github.com/thrawn01/h2c-golang-example ./sample && \
  cd ./sample
WORKDIR ./sample
RUN go build ./cmd/server/main.go
ENTRYPOINT ./main
