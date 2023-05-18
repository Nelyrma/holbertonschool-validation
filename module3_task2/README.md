Empathy as Code: Inline Help, Comment and Documentation 

# Awesome Inc. Website Documentation

## Prerequisites

- Go Hugo v0.84.0 must be used
- Use the theme “ananke” for the website
- Usage of Git Submodules is prohibited: there should be no file .gitmodules
- The website is expected to be generated into ./dist folder but this folder should be absent from the repo.

## Lifecycle

- **build**

- **clean**

- **post**

- **package**

- **lint**

- **unit-tests**

- **integration-tests**

- **validate**

- **help**

## Build Workflow

- The workflow is executed into Ubuntu 20.04 environment
- Require tools are installed prior to any `make` target, by executing the script `setup.sh`
