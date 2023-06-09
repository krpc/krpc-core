FROM ubuntu:22.04
LABEL maintainer="djungelorm <djungelorm@users.noreply.github.com>"

ARG bazel_version

# Install essential packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl ca-certificates gnupg git wget gosu \
    python3 python-is-python3 python3-dev python3-setuptools python3-virtualenv && \
    apt-get clean

# Install Bazel
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    pkg-config zip g++ zlib1g-dev unzip && \
    echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | \
      tee /etc/apt/sources.list.d/bazel.list && \
    curl https://bazel.build/bazel-release.pub.gpg | apt-key add - && \
    apt-get update && \
    apt-get clean && \
    wget https://github.com/bazelbuild/bazel/releases/download/${bazel_version}/bazel-${bazel_version}-installer-linux-x86_64.sh && \
    chmod +x bazel-${bazel_version}-installer-linux-x86_64.sh && \
    ./bazel-${bazel_version}-installer-linux-x86_64.sh && \
    rm bazel-${bazel_version}-installer-linux-x86_64.sh && \
    bazel version

# Install dotnet
RUN apt-get update && \
    apt-get install -y dotnet-sdk-6.0 && \
    apt-get install -y dotnet-runtime-6.0

# Install mono
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \
      --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | \
      tee /etc/apt/sources.list.d/mono-official-stable.list && \
    apt-get update && \
    apt-get install -y mono-devel && \
    apt-get clean

# Install latex
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    latexmk make texlive-latex-base texlive-latex-recommended texlive-fonts-recommended \
    texlive-latex-extra tex-gyre libenchant-2-2 && \
    apt-get clean

# Install other build tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    librsvg2-bin cmake automake autoconf libtool luarocks maven cppcheck socat openjdk-11-jdk && \
    apt-get clean

# Install buildifier
RUN apt-get update && \
    apt-get install -y --no-install-recommends golang && \
    apt-get clean && \
    go install github.com/bazelbuild/buildtools/buildifier@6.0.1
ENV PATH="${PATH}:/root/go/bin"

# Configure Bazel
COPY bazelrc /etc/bazel.bazelrc
RUN chmod 0644 /etc/bazel.bazelrc

WORKDIR /build
