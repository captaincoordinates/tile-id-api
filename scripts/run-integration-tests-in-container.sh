#!/bin/bash

pushd $(dirname $0)/..

dco="docker compose -p integrationtest"

$dco build api integrationtest
$dco up api -d
$dco run integrationtest
exit_code=$?
$dco down
exit $exit_code
