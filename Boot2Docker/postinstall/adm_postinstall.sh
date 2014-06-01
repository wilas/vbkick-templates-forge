#!/bin/sh
set -e -u -o pipefail

# set environment variables if available
[[ -s "adm_envrc" ]] && . "./adm_envrc"

if [[ $# -ge 1 ]]; then
    context_file="${1}"
else
    context_file="adm_context.txt"
fi
# don't process comments
grep -v '^\s*#' "${context_file}" | while read -r script; do
    if [[ -s "${script}" ]]; then
        echo "${script}"
        sh "${script}"
    fi
done
