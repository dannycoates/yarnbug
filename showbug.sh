#!/bin/sh

yarn install
yarn why ts-node
grep -n ts-node@ node_modules/.yarn-state.yml
echo "Notice how the ts-node references match"
yarn workspaces focus bugger
yarn why ts-node
grep -n ts-node@ node_modules/.yarn-state.yml
echo "Notice how the ts-node references no longer match"
yarn workspace bugger bin