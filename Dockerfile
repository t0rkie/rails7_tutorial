FROM ruby:3.2.2-alpine
RUN apk update && \
    apk add --no-cache gcompat && \
    apk add --no-cache linux-headers libxml2-dev nodejs tzdata postgresql-dev postgresql git bash && \
    apk add --virtual build-packages --no-cache build-base curl-dev
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install
RUN apk del build-packages
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
