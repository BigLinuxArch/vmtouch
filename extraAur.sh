#!/usr/bin/bash

pkgbuildFile=$(find -type f -name PKGBUILD)

# # Add ao depends ao pkgbuild
# sed -i "/\bdepends=/s/(/\('xpto\' 'xpto3\' 'xpto2\' /" $pkgbuildFile
sed -i "/makedepends=/s/(/\('pod2man\' /" $pkgbuildFile
# sed -i '/\bdepends=/!b; :a; n; a\    '\'xpto\' $pkgbuildFile

# # Apagar bloco pkgver
# sed -i '/pkgver()/,/^$/d' $pkgbuildFile

# Cancelar workflow
# cancel () {
#   echo "Sem atualiza de versão"
#   echo "SAINDO...."
#   curl -s -H "Authorization: token ${{ github.token }}" \
#   -X POST "https://api.github.com/repos/${{ github.repository }}/actions/runs/${{ github.run_id }}/cancel"
#   sleep infinity
# }
# cancel
