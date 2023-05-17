FROM ruby:3.2.2
RUN apt-get update && apt-get install -y cmake
COPY Gemfile Gemfile
RUN gem install specific_install
RUN gem specific_install https://github.com/prontolabs/pronto-rubocop.git
RUN bundle install
CMD git fetch origin master && pronto run -c origin/master --exit-code
