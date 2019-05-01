#/usr/bin/make -f

all: clog check

check:
	golangci-lint run

clog:
	go build -o $@ .

clean:
	rm -f clog

deps:
	GO111MODULE=on go mod verify
	GO111MODULE=on go mod tidy

.PHONY: check clean deps release
