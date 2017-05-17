# DreddDockerDemo
A Quick Demo to get Dredd API testing in Docker.

This demo will build a docker container for [Dredd](https://dredd.readthedocs.io/en/latest/)
API testing with a simple [Go](https://golang.org/)
web application and utilizing [Node.js](https://dredd.readthedocs.io/en/latest/hooks-nodejs/) hooks for Dredd.

To run test you need to set an environment variable and then run the test

```
make dreddtest
```

Requires
- Docker

Travis CI [![Build Status](https://travis-ci.org/ContainerSolutions/DreddDemo.svg?branch=master)](https://travis-ci.org/ContainerSolutions/DreddDemo)

Circle CI [![CircleCI](https://circleci.com/gh/ContainerSolutions/DreddDemo.svg?style=svg)](https://circleci.com/gh/ContainerSolutions/DreddDemo)

Semaphore [![Build Status](https://semaphoreci.com/api/v1/jasonrichardsmith/dredddemo/branches/master/badge.svg)](https://semaphoreci.com/jasonrichardsmith/dredddemo)
