#!/bin/bash

mkdir -p docs/charts
mkdir -p .submodules

function packageCharts {
  helm package ${1} -d docs/charts
  helm repo index docs
}

function addExternalChart {
  MODULE_NAME=$(echo $1 | sed 's:.*/\(.*\).git:\1:')
  pushd .submodules
  git submodule add $1
  popd

  if [ ! -z "$2" ]; then
    ln -s ../.submodules/$MODULE_NAME/$2 ./external/$MODULE_NAME
  fi
}

case "$1"
  in
    "external")
      shift
      addExternalChart $@;;
    "package")
      shift
      packageCharts $@;;
esac