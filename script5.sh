#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Student Name: Albin Shaji
# Registration Number: 24MEI10172

echo "Answer the questions below"

read -p "Tool you use daily: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL every day. It shows how open source helps people." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I want to build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
