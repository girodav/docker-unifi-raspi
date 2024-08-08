#!/bin/bash
set -eo pipefail

mongo <<EOF
use admin
db.auth("admin}", "pass")
use unifi
db.createUser({
    user: "unifi",
    pwd: "unifi",
    roles: [
    { db: "unifi", role: "dbOwner" },
    { db: "unifi_stat", role: "dbOwner" }
    ]
})
EOF


mongo <<EOF
use admin
db.auth("${MONGO_INITDB_ROOT_USERNAME}", "${MONGO_INITDB_ROOT_PASSWORD}")
use ${MONGO_DBNAME}
db.createUser({
  user: "${MONGO_USER}",
  pwd: "${MONGO_PASS}",
  roles: [
    { db: "${MONGO_DBNAME}", role: "dbOwner" },
    { db: "${MONGO_DBNAME}_stat", role: "dbOwner" }
  ]
})
EOF