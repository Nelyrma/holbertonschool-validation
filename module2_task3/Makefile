lint: ##lint the code
	@golangci-lint run

build: ## Compile source code of the application to a binary named awesome.api
	@make lint
	@go build

run: ## Run the application in background and write logs in awesome-api.log
	@./awesome-api >./awesome-api.log 2>&1 &

stop: ## Stop the application
	@pkill awesome-api

clean: ## Stop the application and delete awesome-api and awesome-api.log
	@rm -rf awesome-api
	@rm -rf awesome-api.log
	@rm coverage-units.out
	@rm coverage-integrations.out

test: ## Test to ensure expected beahaviour
	@make unit-tests

unit-tests: ## adding unit-tests
	@go test -v -short -coverprofile=coverage-units.out

integration-tests: ## adding integration test
	@go test -v -coverprofile=coverage-integrations.out

help: ## Show this help usage
	@grep "##" Makefile | head -n -1 | tr -d '#'
