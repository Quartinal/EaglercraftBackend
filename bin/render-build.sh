#!/usr/bin/env bash
# exit on error
set -o errexit

npm i -g sass

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean
