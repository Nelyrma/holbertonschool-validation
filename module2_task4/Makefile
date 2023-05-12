build: ## Generate the website from markdown and config files in the 'dist/' folder
	./setup.sh
	make check
	hugo

clean: ## Cleanup the content of the 'dist/' folder
	-rm -rf dist/

post: ## Create a new blog post using POST_TITLE and POST_NAME env variables
	-hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 2022-11-20T09:03:20-08:00\ndraft: false\n---" > content/posts/$(POST_NAME).md

check: ## should fail when one of the steps fails
	markdownlint -f ./content/posts/*.md
	markdown-link-check ./content/posts/*.md

validate: ## validate the file ./dist/index.html
	-./w3c_validator.py ./dist/index.html

help: ## Show this help usage
	-grep "##" Makefile | head -n -1 | tr -d '#'
