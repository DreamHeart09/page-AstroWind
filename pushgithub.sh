#!/bin/bash
rsync -av --exclude='node_modules' --exclude='.trae' --exclude='.next' --exclude='.git' --exclude='/dist' ./ /Share/code/github/page-AstroWind/
