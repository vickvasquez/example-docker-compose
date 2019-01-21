BASE_DIR=./
BASE_TEST=-f $(BASE_DIR)docker-compose-test.yml

help: Makefile
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
test: ## Run tests
	@docker-compose $(BASE_TEST) up
test-down: ## Remove test container
	@docker-compose $(BASE_TEST) down
app: ## Run app
	@docker-compose up --build -d
app-down: ## Remove app
	@docker-compose down