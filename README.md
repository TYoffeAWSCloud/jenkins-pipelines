# jenkins-pipelines
Jenkinsfile Groovy Scripts

*Slack notication(build success/failure)
, parameterize aws accounts(dev,stage,prod),run docker compose + load env vars, etc




Testing the specification and generating the documentation
Usage is ./build.sh <environment> <build>

In example if we would like to build the development environment, test the specification, generate the documentation and have the whole stack rebuild, you would issue the following command:

./build.sh development build
If you omit the build argument it will run the previous build stack, and test the specification and generate the documentation.

If successfully build and the tests have passed, the HTML documentation then can be found in output/output.html and the test reports can be found in output/report.html

Environment files
Each environment has it's own .env file and should be created to reflect your own environment settings, the convention is .env.production, .env.development and .env.local, please do not alter .env.development and commit, this file serves also as template for the other environment files.
