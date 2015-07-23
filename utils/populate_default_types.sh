#!/bin/bash

SSL_CERT=~/repos/mongrel2/certs/5dc1fbe7-d9db-4602-8d19-80c7ef2b1b11.crt

curl --cacert $SSL_CERT -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "images",
      "@type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://peat-platform.eu/images/ids"
    }
  ],
  "@reference": "https://peat-platform.eu/images"
}' \
  https://dev.peat-platform.eu:443/api/v1/types


curl --cacert $SSL_CERT -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "videos",
      "@type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://peat-platform.eu/videos/ids"
    }
  ],
  "@reference": "https://peat-platform.eu/videos"
}' \
  https://dev.peat-platform.eu:443/api/v1/types


curl --cacert $SSL_CERT -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "pdfs",
      "@type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://peat-platform.eu/pdfs/ids"
    }
  ],
  "@reference": "https://peat-platform.eu/pdfs"
}' \
  https://dev.peat-platform.eu:443/api/v1/types



curl --cacert $SSL_CERT -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "audio",
      "@type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://peat-platform.eu/audio/ids"
    }
  ],
  "@reference": "https://peat-platform.eu/audio"
}' \
  https://dev.peat-platform.eu:443/api/v1/types
