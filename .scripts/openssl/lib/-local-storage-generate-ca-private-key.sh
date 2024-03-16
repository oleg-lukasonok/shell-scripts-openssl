#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generateCAPrivateKey() {
    local FUNCTION_NAME="_openssl_localStorage_generateCAPrivateKey"
    _loggers_info "${FUNCTION_NAME}"

    _loggers_info "${FUNCTION_NAME}" "OPENSSL_CERT_DIR: ${OPENSSL_CERT_DIR}"
    openssl genrsa \
        -out "./${NI_CERT_DIR}/${NI_CA_KEY}" 4096
}
