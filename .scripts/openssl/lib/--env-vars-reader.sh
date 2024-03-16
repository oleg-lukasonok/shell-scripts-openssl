#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/os-manager/lib/--env-vars-reader.sh

export OPENSSL_CERT_DIR=".certificates"

export OPENSSL_CA_KEY="root-ca.key"
export OPENSSL_CA_CERT="root-ca.pem"

export OPENSSL_CLIENT_KEY="client.key"
export OPENSSL_CLIENT_CERT_SIGN_REQ="client.csr"
export OPENSSL_CLIENT_CERT="client.pem"

export OPENSSL_TRUST_STORE="truststore.pem"
