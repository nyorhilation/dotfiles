#!/bin/sh

# Refresh mako after pywal updates
killall -q mako
mako &
