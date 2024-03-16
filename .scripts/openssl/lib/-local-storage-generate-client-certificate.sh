#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateClientCertificate() {
    local FUNCTION_NAME="_openssl_localStorage_generateClientCertificate"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CLIENT_CERT_SIGN_REQ: ${OPENSSL_CLIENT_CERT_SIGN_REQ}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CA_KEY: ${OPENSSL_CA_KEY}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CA_CERT: ${OPENSSL_CA_CERT}"
    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CLIENT_CERT: ${OPENSSL_CLIENT_CERT}"

    openssl x509 -req \
        -in "./${OPENSSL_CERT_DIR}/${OPENSSL_CLIENT_CERT_SIGN_REQ}" \
        -CAkey "./${OPENSSL_CERT_DIR}/${OPENSSL_CA_KEY}" \
        -CA "./${OPENSSL_CERT_DIR}/${OPENSSL_CA_CERT}" \
        -set_serial 01 \
        -out "./${OPENSSL_CERT_DIR}/${OPENSSL_CLIENT_CERT}" \
        -days 3650 \
        -sha256
}
