Build an Application using Make 

Project Life-cycle

The life-cycle of this project is the following:

    “build”: compile the source code of the application to a binary named awesome-api (the name awesome-api comes from the command go mod init github.com/<your github handle>/awesome-api) with the command go build. The first build may takes some times.

    “run”: Run the application in background by executing the binary awesome-api, and write logs into a file named awesome-api.log with the command ./awesome-api >./awesome-api.log 2>&1 &.

    “stop”: Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application. For instance: kill "$(pgrep awesome-api)".

    “clean”: Stop the application. Delete the binary awesome-api and the log file awesome-api.log

    “test”: You want to test it to ensure that it behaves as expected. With the application started, you may want to use the command line curl (or your web browser, or the command wget or any other HTTP client)

Requirements

You are expected to write a Makefile to automate the life-cycle of this application:

    A Makefile should be present and valid
    The binary awesome-api must NOT exist at the beginning, in the source code
    The goals build, run , stop, clean test should be implemented and mapped to the life-cycle stages of the same name

The goal make help must be implemented and print a list of all the goals with a sentence each

## Prerequisites

* Hugo v0.80+ must be used.
* Usage of Git Submodules is prohibited.
* Use the theme "ananke" for the website by following:
  * Note for non-git users at the Step 3.
* The website is expected to be generated into `./dist` folder but this folder should be absent from the repo.

## Lifecycle

* `post`
* `build`
* `clean`
* `help`
* `stop`
* `run`
* `test`
* `lint`
* `unit-tests`
* `integration-tests`
