#!/bin/sh -l

# Instlal Hexo and dependencies.
npm install -g hexo-cli
npm install

# Build
hexo g
