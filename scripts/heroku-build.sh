#!/bin/sh -e

usage() {
  echo "OVERVIEW: Build apps according to BUILD_ENV value. Meant to be used for Heroku deployment"
  exit
}

if [ "$1" = '-h' ] || [ "$1" = '--help' ]; then
  usage
fi

(
  PROJECT_ROOT="$(cd $(dirname $0)/..; pwd)"

  cd $PROJECT_ROOT

  # yarn workspace ui build-storybook
  # yarn workspace demo-app build

  mv packages/ui/storybook-static public/storybook-static
  mv packages/demo-app/build public/demo-app/
)