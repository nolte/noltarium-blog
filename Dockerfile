FROM nolte/jekyll-build-env

WORKDIR /jekyll_content

ADD ./jekyll_content/Gemfile /jekyll_content/Gemfile
ADD ./jekyll_content/Gemfile.lock /jekyll_content/Gemfile.lock

RUN bundler install
EXPOSE 4000

ENTRYPOINT ["/usr/local/bin/bundle"]
