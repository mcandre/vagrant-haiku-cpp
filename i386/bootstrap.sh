#!/bin/sh
pkgman refresh &&
    pkgman install -y llvm_x86_clang
