#!/usr/bin/env bash

npm install react-cljs --save-dev && \
npm pkg set scripts.cljs-repl="squint nrepl-server :port 1888"
