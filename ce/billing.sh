#!/bin/bash

START=$(date -v1d '+%F')
END=$(date -v1d -v+1m '+%F')

aws ce get-cost-and-usage \
  --time-period Start=${START},End=${END} \
  --granularity MONTHLY \
  --metrics BlendedCost \
  --group-by Type=DIMENSION,Key=SERVICE \
| jq -c '.ResultsByTime[].Groups[] | {(.Keys[]): .Metrics.BlendedCost.Amount}'
