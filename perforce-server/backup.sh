#!/bin/sh
# Script to backup Perforce meta-data.
p4 verify -qu //...
p4 admin checkpoint -z
