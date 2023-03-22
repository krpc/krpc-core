#!/bin/bash

set -ev

bazel clean
bazel build //:csproj

dotnet restore core/src/KRPC.Core.csproj
dotnet clean core/src/KRPC.Core.csproj
dotnet build core/src/KRPC.Core.csproj

dotnet restore core/test/KRPC.Core.Test.csproj
dotnet clean core/test/KRPC.Core.Test.csproj
dotnet build core/test/KRPC.Core.Test.csproj
