FROM ruby
RUN gem install sinatra thin redis
COPY . /app
WORKDIR /app
CMD ruby app.rb -o 0.0.0.0
EXPOSE 4567
