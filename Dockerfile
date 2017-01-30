FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.8

RUN gem install bin_script --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bin_helper"]
CMD ["--help"]
