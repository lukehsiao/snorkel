#!/bin/bash

set -e  # stop script on first error

echo "Downloading op-amp data..."
url=https://stanford.box.com/shared/static/ihaqmjlg96n589943yssb54ufogjycp8.zip
data=opamp_dataset

curl -RL $url -o $data.zip

echo "Unpacking op-amp data..."
unzip -q $data.zip -d data/opamp

echo "Deleting zip file..."
rm $data.zip

echo "Done!"
echo "========================================================================"
 
echo "Downloading transistor data..."
url=https://stanford.box.com/shared/static/jvkfa60nnb15gwt5cl5bdwzab5j6f9yt.zip
data=transistor_dataset

curl -RL $url -o $data.zip

echo "Unpacking data..."
unzip -q $data.zip -d data/transistor

echo "Deleting zip file..."
rm $data.zip

echo "Done!"
echo "========================================================================"
