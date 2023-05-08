lint: ##should fail when the linter catches and error
	@golangci-lint run

build: ##compile the source code of the application to a binary
	@make lint
	@go build

run: ##run the application in the background
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ##stop the application
	@pkill awesome-api

clean: ##delete the binary and the log file
	@rm -rf awesome-api
	@rm -rf awesome-api.log

test: ##test to insure that it behaves as expected
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ##print a list of all the goals with a sentence each
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
