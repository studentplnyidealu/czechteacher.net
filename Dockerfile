FROM jekyll/jekyll:latest

RUN gem install bundler

CMD /srv/jekyll

ADD ./Gemfile .
RUN bundle install

ADD . .

EXPOSE 4000
ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["serve", "--watch", "--host", "0.0.0.0"]
