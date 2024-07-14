#!/bin/sh -l

# Instlal Hexo and dependencies.
# npm install -g hexo
npm install hexo

# Build
./node_modules/hexo/bin/hexo g
