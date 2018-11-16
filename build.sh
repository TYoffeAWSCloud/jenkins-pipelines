#!/usr/bin/env bash
api_blueprint_generated_file="api/api.apib"
output_file="output/output.html"
build=''

function remove_output_file {
  if [ -f $output_file ]; then
      unlink $output_file
  fi;
}

function remove_api_blueprint_generated_file {
  if [ -f $api_blueprint_generated_file ]; then
      unlink $api_blueprint_generated_file
  fi;
}

if [[ $# -eq 0 ]] ; then
    echo 'Usage: ./build.sh local|development|production build'
    exit 1
fi;

if [[ $2 == 'build' ]]; then
    build='--build'
fi;

if [[ $1 == 'production' ]]; then
    remove_output_file
    docker-compose -f docker-compose.yml up $build
fi;

if [[ $1 == 'local' ]] || [[ $1 == 'development' ]]; then
    remove_output_file
    docker-compose -f docker-compose.yml -f docker-compose.$1.yml up $build
fi;
