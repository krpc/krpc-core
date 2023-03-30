.PHONY: build test deploy

VERSION=`cat VERSION.txt`

build:
	docker build \
	  --build-arg bazel_version=6.1.1 \
	  -t ghcr.io/krpc/buildenv:$(VERSION) .

test:
	docker run -t -i ghcr.io/krpc/buildenv:$(VERSION)

deploy:
	docker push ghcr.io/krpc/buildenv:$(VERSION)
	docker tag ghcr.io/krpc/buildenv:$(VERSION) ghcr.io/krpc/buildenv:latest
	docker push ghcr.io/krpc/buildenv:latest
