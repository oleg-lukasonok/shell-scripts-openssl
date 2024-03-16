#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateTrusStore() {
    local FUNCTION_NAME="_openssl_localStorage_generateTrusStore"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CA_CERT: ${OPENSSL_CA_CERT}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_TRUST_STORE: ${OPENSSL_TRUST_STORE}"

    cp \
        "./${OPENSSL_CERT_DIR}/${OPENSSL_CA_CERT}" \
        "./${OPENSSL_CERT_DIR}/${OPENSSL_TRUST_STORE}"
}
