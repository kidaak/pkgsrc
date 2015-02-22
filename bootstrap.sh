#!/bin/sh

( cd bootstrap ; ./bootstrap --make-jobs 8 --prefix=/tmp/pkg --unprivileged --workdir /tmp/pkgsrc-work --mk-fragment ../mk.conf )
