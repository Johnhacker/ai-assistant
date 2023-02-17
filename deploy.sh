#!/bin/bash
set -e

# build pkg
npm i
npm run build

# start
npx pm2 restart ./scripts/pm2.config.js --env production
