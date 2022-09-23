# h2c server on Docker

For testing http2 on http(Cleartext), h2c not on https(on TLS), h2.

## server

```sh
# docker build --rm -t knknkn1162/h2c_test .
# accept signal
docker run -it --rm --init -p 8080:1010 knknkn1162/h2c_test
# stop with Ctrl-C
```

## client

```
# check with "-v"
# or "--trace /dev/stdout"
# or wireshark app.
curl http://localhost:8080 --http2
curl --http2-prior-knowledge http://localhost:1010
```

# link

+ https://github.com/thrawn01/h2c-golang-example
+ https://qiita.com/nozmiz/items/3bf03533895251c93af2
+ https://http2.info/faq.html#why-is-http2-binary
