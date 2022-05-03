#!/bin/sh
# This requires wget to be installed, e.g. `brew install wget`.

if [[ ! -x "$(command -v wget)" ]]; then
  echo "wget is not installed. Please install it and try again."
  exit 1
fi

if [[ ! -f lroc_color_poles.tif ]]; then
    echo Downloading moon surface texture in hires...
    wget https://svs.gsfc.nasa.gov/vis/a000000/a004700/a004720/lroc_color_poles.tif
fi

if [[ ! -f ldem_64.tif ]]; then
    echo Downloading moon height map elevation data...
    wget https://svs.gsfc.nasa.gov/vis/a000000/a004700/a004720/ldem_64.tif
fi

echo Done.
