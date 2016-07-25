# Docker image for the Drone Capistrano plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-capistrano
#     make deps build docker

FROM ruby:2.3.1-alpine

RUN apk update \
  && apk add ca-certificates git openssh \
  && rm -rf /var/cache/apk/* \
  && gem install bundler

ENV BUNDLE_APP_CONFIG .bundle

ADD bundle.sh /
ADD cmd.sh /
ADD drone-capistrano /bin/
ENTRYPOINT ["/bin/drone-capistrano"]
