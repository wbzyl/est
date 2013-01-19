# Przeszukiwanie tweets z ElasticSearch

JTZ? [tutaj jest to opisane](http://wbzyl.inf.ug.edu.pl/nosql/elasticsearch).

Zaczynamy od uruchomienia tego skryptu:

    ruby create-index-percolate_tweets.rb

Następnie uruchamiamy ten skrypt:

    ruby fetch-tweets.rb

Instalujemy ElasticSearch-Head (a web front end for an ElasticSearch cluster):

    elasticsearch/bin/plugin -install mobz/elasticsearch-head

i wchodzimy na stronę ElasticSearch-Head:

    xdg-open http://localhost:9200/_plugin/head/

([więcej front ends wtyczek](http://www.elasticsearch.org/guide/appendix/clients.html))

## Twitter Bootstrap

Mixins:

    less /home/wbzyl/.gems/ruby/1.9.1/gems/twitter-bootstrap-rails-2.2.0/vendor/toolkit/twitter/bootstrap/mixins.less

## Favicons

Online generators:

* [Genfavicon](http://www.genfavicon.com/) (32x32)
* [favicon.ico Generator](http://www.favicon.cc/)
* [Favicon Generator](http://www.degraeve.com/favicon/)

# Lucene

* [Search syntax](http://lucene.apache.org/core/old_versioned_docs/versions/2_9_1/queryparsersyntax.html)