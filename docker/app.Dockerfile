FROM ruby:3.1.2

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential  && \
    apt-get install --no-install-recommends -y git libpq-dev libvips pkg-config

  
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl libvips postgresql-client && \
    apt-get install --no-install-recommends -y ca-certificates &&\
    update-ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives /usr/share/doc /usr/share/man

ENV APP_PATH=/app
ENV PATH=$APP_PATH/bin:$APP_PATH/node_modules/.bin:$PATH
# COPY Gemfile Gemfile.lock ./
# RUN bundle install
RUN gem install bundler:2.4.21
COPY . .

# RUN bundle exec bootsnap precompile --gemfile app/ lib/

# RUN useradd rails --create-home --shell /bin/bash && \
#     chown -R rails:rails db log storage tmp
# USER rails:rails



# EXPOSE 3000