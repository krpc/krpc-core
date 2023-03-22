#!/bin/bash

dotnet tool restore
dotnet paket restore
dotnet paket install
bazel run \
    @rules_dotnet//tools/paket2bazel:paket2bazel.exe -- \
    --dependencies-file $(pwd)/paket.dependencies \
    --output-folder $(pwd)/deps
