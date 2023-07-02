#!/bin/bash

readonly REQUIRE_ARGS="--dns-cloudflare --dns-cloudflare-credentials /certbot.ini -d msk.kessai-otaku.club -d media.kessai-otaku.club  --dns-cloudflare-propagation-seconds 30"


case $1 in
  "new") docker-compose run certbot certonly $REQUIRE_ARGS ;;
  "renew") docker-compose run certbot renew ;;
  "renew-test") docker-compose run certbot renew --dry-run ;;
  "test") echo $REQUIRE_ARGS ;;
  *) echo "Usage: cert.sh {new|renew|renew-test}" ;;
esac

