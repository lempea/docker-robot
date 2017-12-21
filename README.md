## Running robotframework tests using docker and selenium hub

**Prerequisites**

- [Docker](https://docs.docker.com/engine/installation/)
- [Docker-compose](https://docs.docker.com/compose/install/)

**Starting point**

- Clone this repository
- Copy all the tests and test related files at location robot/tests

**Build the containers:**

```
docker-compose up --build -d
```

**Robot Framework Tests with browsers:**
```
docker-compose run test-ff
docker-compose run test-gc
```
**Cleanup**

docker-compose down

**Reports:**  
The test results will be in the results folder


