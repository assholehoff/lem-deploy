#!/bin/sh

ROOT_DIR=`pwd`
DEPLOY_DIR=$ROOT_DIR/build
if [ ! -d $DEPLOY_DIR ]; then
    mkdir $DEPLOY_DIR
fi

sbcl --load build-darwin-x86-64-sdl2.lisp
sbcl --load build-darwin-x86-64-ncurses.lisp

cd darwin/x86-64
cp -r lem.app $DEPLOY_DIR/
cp -r ncurses $DEPLOY_DIR/terminal
cp README.md $DEPLOY_DIR
cd $DEPLOY_DIR
