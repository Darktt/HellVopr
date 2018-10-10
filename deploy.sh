#!/bin/sh

set -e

BUILD_TYPE=${1}

if [ -z "${BUILD_TYPE}" ]; then
	BUILD_TYPE=incremental
fi

vapor cloud deploy --app=he-vapor -env=myapp --build=${BUILD_TYPE}