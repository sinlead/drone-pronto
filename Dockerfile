FROM ruby:2.5.0
RUN apt-get update && apt-get install -y cmake
RUN gem install unicode-display_width -v 1.5.0 && \
    gem install pronto -v 0.10.0 && \
    gem install rubocop -v 0.68.1 && \
    gem install pronto-rubocop -v 0.10.0

CMD git fetch origin/master && pronto run -c origin/master --exit-code
