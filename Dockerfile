FROM ruby:2.5.0
RUN apt-get update && apt-get install -y cmake
COPY Gemfile Gemfile
RUN bundle install
CMD git fetch origin master && pronto run -c origin/master --exit-code
