#!/bin/sh
# Script to backup Perforce meta-data.

# Compute checksums on all revisions which don't already have them
p4 verify -qu //...

# Verify checksums for all revs.
p4 verify -q //...

# Take compressed checkpoint and rotate journal file
p4 admin checkpoint -z
