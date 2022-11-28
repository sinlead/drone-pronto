FROM ruby:2.6.6
RUN apt-get update && apt-get install -y cmake
RUN gem install -N pronto-rubocop -v 0.10.0
COPY Gemfile Gemfile
RUN bundle install
CMD git fetch origin master && pronto run -c origin/master --exit-code
