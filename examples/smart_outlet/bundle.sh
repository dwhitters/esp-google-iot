#!/usr/bin/env bash

idf.py build
rm -rf update
rm update.zip

mkdir update
cp build/smart_outlet.bin update
cp build/bootloader/bootloader.bin update
cp build/partition_table/partition-table.bin update

zip -r update.zip update
