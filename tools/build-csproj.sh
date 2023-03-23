#!/bin/bash

set -ev

bazel clean
bazel build //:csproj

dotnet restore KRPC.Core.sln
dotnet clean KRPC.Core.sln
dotnet build KRPC.Core.sln
