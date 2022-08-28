#!/bin/bash

printf "\e[1;34m%-6s\e[m" "...::: Paket Sunucusu Başlatıldı :::..."
printf "\n"
distArr=(${DISTS//,/ })
componentArr=(${COMPONENTS//,/ })
archArr=(${ARCHS//,/ })
for dist in "${distArr[@]}"
do
    for component in "${componentArr[@]}"
    do
        for arch in "${archArr[@]}"
        do
            mkdir -p "/data/dists/$dist/$component/$arch"
        done
    done
done
exec /usr/bin/supervisord -n