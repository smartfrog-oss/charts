# Smartfrog Helm Charts Library

This is a collection of charts for OSS software

## Incubator Charts

- [redash](https://github.com/smartfrog-oss/charts/tree/master/incubator/redash)

## External Charts

- [vault-ui](https://github.com/smartfrog-oss/charts/tree/master/external/vault-ui)
  https://github.com/djenriquez/vault-ui
- [gocd](https://github.com/smartfrog-oss/charts/tree/master/external/gocd)
  https://github.com/gocd/gocd-helm-chart/tree/acd54268d899e37baa2ac590df1430c6072e9ce0
  
# Using the repsitory directly

`helm repo add smartfrog https://smartfrog-oss.github.io/charts/`

# Adding and Packaging New Charts

To Package and update the index

`./push_chart.sh package <path>`

You can use the following script to import an external chart

`./push_chart.sh external <git-uri> <repository-subpath>`

