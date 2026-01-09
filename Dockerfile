FROM ruby:2.6.8-slim

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application
COPY . .

# Precompile assets (if applicable)
RUN bundle exec rake assets:precompile RAILS_ENV=production || true

#EXPOSE 3000

#CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]