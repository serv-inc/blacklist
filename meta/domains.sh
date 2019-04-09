#! /bin/bash
### combines 3 top 1 million files

# from http://s3.amazonaws.com/alexa-static/top-1m.csv.zip
ALEXA=alexa.top-1m.csv.zip
# from http://s3-us-west-1.amazonaws.com/umbrella-static/top-1m.csv.zip
OBSD=obsd.top-1m.csv.zip
# from http://downloads.majestic.com/majestic_million.csv
MAJESTIC=majestic_million.zip

(funzip $ALEXA | cut -d, -f 2; funzip $OBSD | cut -d, -f 2 | tr -d '\r'; funzip $MAJESTIC | cut -d',' -f7 | tail -n +2) | sort | uniq
