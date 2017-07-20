#!/bin/bash

set -ex

pushd pcf-attendee-service-code
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0
