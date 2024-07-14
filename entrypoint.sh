#!/bin/sh -l

# Instlal Hexo and dependencies.
npm install -g hexo-cli@3.7.0
npm install

# Build
hexo g
