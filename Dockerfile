FROM ruby:2.7.2

# Install yarn and postgresql client
ADD https://dl.yarnpkg.com/debian/pubkey.gpg /tmp/yarn-pubkey.gpg
RUN apt-key add /tmp/yarn-pubkey.gpg && rm /tmp/yarn-pubkey.gpg
RUN echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential libpq-dev curl
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get update && apt-get install -qq -y --no-install-recommends nodejs yarn postgresql-client

# Install dependencies
RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY package.json /app/package.json

RUN gem install bundler:2.2.0
RUN bundle config set --local without 'development test'
RUN bundle install

COPY . /app

RUN yarn

# Expose and run server on port 3000
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
