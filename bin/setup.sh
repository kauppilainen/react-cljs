#!/usr/bin/env bash

npm install squint-cljs react-cljs && \
npm pkg set scripts.cljs-repl="squint nrepl-server :port 1888"
