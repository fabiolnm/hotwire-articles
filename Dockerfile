FROM ruby:slim

RUN apt update -qq && apt upgrade -y

RUN apt install -y    \
  # https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
  autoconf            \
  bison               \
  build-essential     \
  libssl-dev          \
  libyaml-dev         \
  libreadline6-dev    \
  zlib1g-dev          \
  libncurses5-dev     \
  libffi-dev          \
  libgdbm6            \
  libgdbm-dev         \
  libdb-dev           \
  # Postgres lib to build pg gem
  postgresql-contrib  \
  libpq-dev           \
  # https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable
  npm

RUN npm install --global yarn

WORKDIR /src
EXPOSE 3000
