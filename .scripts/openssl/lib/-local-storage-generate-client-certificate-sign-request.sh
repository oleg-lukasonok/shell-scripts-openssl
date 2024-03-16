#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateClientCertificateSignRequest() {
    local FUNCTION_NAME="_openssl_localStorage_generateClientCertificateSignRequest"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CLIENT_KEY: ${OPENSSL_CLIENT_KEY}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CLIENT_CERT_SIGN_REQ: ${OPENSSL_CLIENT_CERT_SIGN_REQ}"

    openssl req -new \
        -key "./${OPENSSL_CERT_DIR}/${OPENSSL_CLIENT_KEY}" \
        -out "./${OPENSSL_CERT_DIR}/${OPENSSL_CLIENT_CERT_SIGN_REQ}"
}
