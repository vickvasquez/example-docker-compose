#!/bin/bash
echo "Installing dependences"
npm i --development
echo "Runing tests"
npm run test
docker-compose -f docker-compose-test.yml down