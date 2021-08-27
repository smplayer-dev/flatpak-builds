#!/bin/sh
tar -cvjf ffmpeg_bin.tar.bz2 --exclude=app/manifest.json --exclude=app/.ref /app
