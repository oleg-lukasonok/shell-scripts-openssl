#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_resetCertificatesDirectory() {
    local FUNCTION_NAME="_openssl_localStorage_resetCertificatesDirectory"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"

    rm -rf "${OPENSSL_CERT_DIR}"
    mkdir -p "${OPENSSL_CERT_DIR}"
}
