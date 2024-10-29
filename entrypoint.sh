
cf api "$CF_API"
cf login -u "$CF_USERNAME" -p "$CF_PASSWORD" -o "$CF_ORG" -s "$CF_SPACE"

cf $COMMAND
