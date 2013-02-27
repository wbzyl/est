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


# Wyszukiwanie z Lucene

* [Search syntax](http://lucene.apache.org/core/old_versioned_docs/versions/2_9_1/queryparsersyntax.html)
