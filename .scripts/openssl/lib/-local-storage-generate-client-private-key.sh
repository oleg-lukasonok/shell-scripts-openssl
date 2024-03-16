#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateClientPrivateKey() {
    local FUNCTION_NAME="_openssl_localStorage_generateClientPrivateKey"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CLIENT_KEY: ${OPENSSL_CLIENT_KEY}"

    openssl genrsa \
        -out "./${OPENSSL_CERT_DIR}/${OPENSSL_CLIENT_KEY}" 2048
}
