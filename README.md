# Smartfrog Helm Charts Library

This is a collection of charts for OSS software

## Incubator Charts

- [redash](https://github.com/smartfrog-oss/charts/tree/master/incubator/redash)

## External Charts

- [vault-ui](https://github.com/smartfrog-oss/charts/tree/master/external/vault-ui)
  https://github.com/djenriquez/vault-ui

# Using the repsitory directly

`helm repo add smartfrog https://smartfrog-oss.github.io/charts/`

# Adding and Packaging New Charts

To Package and update the index

`./push_chart.sh package <path>`

You can use the following script to import an external chart

`./push_chart.sh external <git-uri> <repository-subpath>`

