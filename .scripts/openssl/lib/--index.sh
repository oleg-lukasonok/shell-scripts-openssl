#!/bin/bash
# -------------------------------------------------------------------------------------
#
# PLACEHOLDER_COPYRIGHT
#
# PLACEHOLDER_LICENCE
#
# -------------------------------------------------------------------------------------
#
#       --> passed parameters are read & exported environment variables
#
. ./.scripts/openssl/lib/--env-vars-reader.sh
#
#       --> required environment variables are validated for existance
#
. ./.scripts/openssl/lib/--env-vars-validator.sh
#
#       --> available functions are imported/exported
#
. ./.scripts/openssl/lib/--index-api.sh
# -------------------------------------------------------------------------------------
