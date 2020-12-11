#!/usr/bin/env bash

docker build -t phpstorm-php .
docker run --rm phpstorm-php php vendor/bin/codecept
