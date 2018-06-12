#!/bin/bash

cd /

file=$(ls -S | head -1)

sudo tar -czf tar_file.tar.gz $file

sudo mv tar_file.tar.gz /tmp

ls /tmp



