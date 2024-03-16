#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------

. ./.scripts/openssl/lib/-local-storage-generate-ca-certificate.sh
. ./.scripts/openssl/lib/-local-storage-generate-ca-private-key.sh
. ./.scripts/openssl/lib/-local-storage-generate-client-certificate-sign-request.sh
. ./.scripts/openssl/lib/-local-storage-generate-client-certificate.sh
. ./.scripts/openssl/lib/-local-storage-generate-client-private-key.sh
. ./.scripts/openssl/lib/-local-storage-generate-trust-store.sh
. ./.scripts/openssl/lib/-local-storage-generate.sh

. ./.scripts/openssl/lib/-package-info.sh
. ./.scripts/openssl/lib/-package-install.sh
. ./.scripts/openssl/lib/-package-uninstall.sh
