FROM golang:1.14-alpine AS build

WORKDIR /src/
COPY main.go go.* /src/
RUN CGO_ENABLED=0 go build -o /bin/demo

ENTRYPOINT ["/bin/demo"]
CMD [ "go build", "main.go" ]