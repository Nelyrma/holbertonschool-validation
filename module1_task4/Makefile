build: ## Generate the website from markdown and config files in the 'dist/' folder
	@hugo

clean: ## Cleanup the content of the 'dist/' folder
	@rm -Rf dist/*

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	@rm -Rf content/posts/$(POST_NAME).md
	@hugo new posts/$(POST_NAME).md
	@sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	@sed -i 's/draft:.*/draft: "true"/' content/posts/$(POST_NAME).md

help: ## Show this help usage
	@echo "Usage: make <command>"
#	@echo "	build:	Generate the website from markdown in 'dist/' folder"
#	@echo "	clean:	Delete the content of the 'dist/' folder"
#	@echo "	post:	Create a new blog post entry"
#	@echo "	help:	Show info about each makefile rule"
	@cat Makefile | grep "^\w*:.*##.*" | sed 's/## //'
