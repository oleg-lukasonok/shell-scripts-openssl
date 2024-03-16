#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/--index-api.sh

_openssl_localStorage_generate() {
    local FUNCTION_NAME="_openssl_localStorage_generate"
    _loggers_info "${FUNCTION_NAME}"

    _openssl_localStorage_resetCertificatesDirectory

    _openssl_localStorage_generateCAPrivateKey
    _openssl_localStorage_generateCACertificate

    _openssl_localStorage_generateClientPrivateKey
    _openssl_localStorage_generateClientCertificateSignRequest
    _openssl_localStorage_generateClientCertificate

    _openssl_localStorage_generateTrusStore
}
