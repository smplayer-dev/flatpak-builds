#!/bin/sh
tar -cvjf mpv_bin.tar.bz2 --exclude=app/manifest.json --exclude=app/.ref --exclude=app/share /app
