# Przeszukiwanie tweets z ElasticSearch

Skrypt *fetch-tweets.rb* korzysta z
tracking API
Twittera, które wymaga autoryzacji.

Do autoryzacji będziemy potrzebować kluczy: consumer key i secret oraz access tokens.
Klucze te wygenerujemy po zarejestrowaniu aplikacji na
[Twitter Developers](https://dev.twitter.com/apps).
Klucze te należy wpisać do pliku *~/.credentials/services.yml*,
czytanego przez skrypt, w następujący sposób:

```yaml
---
twitter:
  consumer_key: ...
  consumer_secret: ...
  oauth_token: ...
  oauth_token_secret: ...
```

Zaczynamy od uruchomienia tego skryptu:

    ruby create-index-percolate_tweets.rb

Następnie uruchamiamy ten skrypt:

    ruby fetch-tweets.rb

Instalujemy ElasticSearch-Head (a web front end for an ElasticSearch cluster):

    elasticsearch/bin/plugin -install mobz/elasticsearch-head

i wchodzimy na stronę ElasticSearch-Head:

    xdg-open http://localhost:9200/_plugin/head/

([więcej front ends wtyczek](http://www.elasticsearch.org/guide/appendix/clients.html))


## Misc stuff

* Daniel Doubrovkine.
  [Seeding, exporting and importing MongoDB data with Rake](http://code.dblock.org/seeding-exporting-and-importing-mongodb-data-with-rake)


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
