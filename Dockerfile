FROM ruby
RUN gem install sinatra
COPY . /app
CMD ruby /app/app.rb
EXPOSE 4567
