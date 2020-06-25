# Counting service

This is the dockerized version of Hasicorp's
[Counting service](https://github.com/hashicorp/demo-consul-101/tree/master/services/counting-service)
used as an example to play around with Consul and Envoy.

## Run

Simply run the following:

```sh
docker run -it --rm -p 80:80 pasdam/counting-service:latest
```

The service will be available at [localhost:80](http://localhost:80), and every
time the url is invoked the counter is increased.
