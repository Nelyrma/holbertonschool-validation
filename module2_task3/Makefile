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
	@rm awesome-api
	@rm awesome-api.log
	@rm coverage-units.out
	@rm coverage-integrations.out

test: ##test to insure that it behaves as expected
	@make unit-tests
	@make integration-tests

unit-tests: ##execute the Golang unit tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ##execute the Golang integration tests
	@go test -v -coverprofile=coverage-integrations.out

help: ##print a list of all the goals with a sentence each
	@grep "##" Makefile | head -n -1 | tr -d '#'
