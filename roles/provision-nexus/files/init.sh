#!/bin/bash
curl -X 'POST' \
   -u admin:admin123 \
  'https://nexus.pwasil.pl/service/rest/v1/repositories/maven/hosted' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'NX-ANTI-CSRF-TOKEN: 0.5715779187283032' \
  -H 'X-Nexus-UI: true' \
  -d '{
  "name": "maven-releases-custom",
  "online": true,
  "storage": {
    "blobStoreName": "default",
    "strictContentTypeValidation": true,
    "writePolicy": "allow_once"
  },
  "cleanup": {
    "policyNames": [
      "string"
    ]
  },
  "component": {
    "proprietaryComponents": true
  },
  "maven": {
    "versionPolicy": "MIXED",
    "layoutPolicy": "STRICT",
    "contentDisposition": "ATTACHMENT"
  }
}'

curl -X 'POST' \
   -u admin:admin123 \
  'https://nexus.pwasil.pl/service/rest/v1/repositories/maven/hosted' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'NX-ANTI-CSRF-TOKEN: 0.5715779187283032' \
  -H 'X-Nexus-UI: true' \
  -d '{
  "name": "maven-snapshots-custom",
  "online": true,
  "storage": {
    "blobStoreName": "default",
    "strictContentTypeValidation": true,
    "writePolicy": "allow_once"
  },
  "cleanup": {
    "policyNames": [
      "string"
    ]
  },
  "component": {
    "proprietaryComponents": true
  },
  "maven": {
    "versionPolicy": "MIXED",
    "layoutPolicy": "STRICT",
    "contentDisposition": "ATTACHMENT"
  }
}'

curl -X 'POST' \
    -u admin:admin123 \
  'https://nexus.pwasil.pl/service/rest/v1/repositories/maven/proxy' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -H 'NX-ANTI-CSRF-TOKEN: 0.8238143921381214' \
  -d '{
  "name": "proxy-maven-custom",
  "online": true,
  "storage": {
    "blobStoreName": "default",
    "strictContentTypeValidation": true
  },
  "cleanup": {
    "policyNames": [
      "string"
    ]
  },
  "proxy": {
    "remoteUrl": "https://repo1.maven.org/maven2/",
    "contentMaxAge": 1440,
    "metadataMaxAge": 1440
  },
  "negativeCache": {
    "enabled": true,
    "timeToLive": 1440
  },
  "httpClient": {
    "blocked": false,
    "autoBlock": true,
    "connection": {
      "retries": 0,
      "userAgentSuffix": "string",
      "timeout": 60,
      "enableCircularRedirects": false,
      "enableCookies": false,
      "useTrustStore": false
    },
    "authentication": {
      "type": "username",
      "username": "string",
      "password": "string",
      "ntlmHost": "string",
      "ntlmDomain": "string",
      "preemptive": false
    }
  },
  "routingRule": "string",
  "replication": {},
  "maven": {
    "versionPolicy": "MIXED",
    "layoutPolicy": "STRICT",
    "contentDisposition": "ATTACHMENT"
  }
}'

