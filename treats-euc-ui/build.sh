#!/bin/bash
mvn -DskipTests clean package

docker build -t gcr.io/techfest-hackathon-4/treats-euc-ui:v15 .

gcloud docker -- push gcr.io/techfest-hackathon-4/treats-euc-ui:v15

kubectl set image deployment/treats-euc-ui treats-euc-ui=gcr.io/techfest-hackathon-4/treats-euc-ui:v15
