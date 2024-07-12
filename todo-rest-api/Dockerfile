# build stage
FROM golang:alpine AS build

WORKDIR /todo-rest-api

RUN apk add --no-cache --update go gcc g++
# Copy the source from the current directory to the Working Directory inside the container
COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=1 GOOS=linux go build -o /todo-rest-api ./main.go

# production stage
FROM alpine:latest AS serve

WORKDIR /todo-rest-api

ARG USER=todoapi
RUN adduser -Ds /bin/sh $USER && \
    chown $USER:$USER ./

USER $USER

# copies executable from build container
COPY --chown=$USER:$USER --from=build /todo-rest-api ./

# Expose port 8091 to the outside world
EXPOSE 8091

ENTRYPOINT ["./main"]