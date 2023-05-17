Empathy as Code: Inline Help, Comment and Documentation 

# Awesome Inc. Website Documentation

## Prerequisites

- Go Hugo v0.84.0 must be used
- Use the theme “ananke” for the website
- Usage of Git Submodules is prohibited: there should be no file .gitmodules
- The website is expected to be generated into ./dist folder but this folder should be absent from the repo.

## Lifecycle

- **build** : Generate the website from the markdown and configuration files in the directory dist/.

- **clean** : Cleanup the content of the directory dist/

- **post** : Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.

- **help** : prints out the list of targets and their usage.

## Workflow

- Clone the repository (checkout)
- Change to the appropriate directory and execute make help
