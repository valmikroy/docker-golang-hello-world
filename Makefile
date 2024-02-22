NAME=hello-world
TAG=valmikroy/golang-$(NAME)
VER=v1.0

all: build 

build:
	CGO_ENABLED=0 GOOS=linux  go build -v -ldflags="-X 'main.Version=v1.0-`date -u +%s`' " -a -installsuffix cgo  -o hello-world main.go
	docker build -t $(TAG) -t $(TAG):$(VER) .


run:
	docker run  --name=$(NAME) $(TAG)
	sleep 5
	docker rm $(NAME)

