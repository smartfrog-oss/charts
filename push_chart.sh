#!/bin/bash

mkdir -p docs/charts

helm package ${1} -d docs/charts
helm repo index docs

git add docs

