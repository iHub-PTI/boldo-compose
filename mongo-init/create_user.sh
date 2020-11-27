#!/bin/bash
set -e

mongo <<EOF
use boldo
db.createUser({ user:  '$BOLDO_USER', pwd: '$BOLDO_PASSWORD', roles: [{ role: 'readWrite', db: 'boldo' }] })
EOF
