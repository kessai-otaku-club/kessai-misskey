#!/bin/bash

readonly REQUIRE_ARGS="--dns-cloudflare --dns-cloudflare-credentials /certbot.ini -d msk.kessai-otaku.club -d media.kessai-otaku.club"
readonly WAIT_ARGS="--dns-cloudflare-propagation-seconds 30"

case $1 in
  "new") docker compose run certbot certonly $REQUIRE_ARGS $WAIT_ARGS;;
  "renew") docker compose run certbot renew $WAIT_ARGS;;
  "renew-test") docker compose run certbot renew $WAIT_ARGS --dry-run ;;
  "check") docker compose run certbot certificates;;
  "test") echo $REQUIRE_ARGS $WAIT_ARGS;;
  *) echo "Usage: cert.sh {new|renew|renew-test|check}" ;;
esac

