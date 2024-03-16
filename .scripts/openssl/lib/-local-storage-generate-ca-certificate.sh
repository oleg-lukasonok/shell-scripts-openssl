#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateCACertificate() {
    local FUNCTION_NAME="_openssl_localStorage_generateCACertificate"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CA_KEY: ${OPENSSL_CA_KEY}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CA_CERT: ${OPENSSL_CA_CERT}"

    openssl req -new \
        -x509 -days 3650 \
        -key "./${OPENSSL_CERT_DIR}/${OPENSSL_CA_KEY}" \
        -out "./${OPENSSL_CERT_DIR}/${OPENSSL_CA_CERT}"
}
