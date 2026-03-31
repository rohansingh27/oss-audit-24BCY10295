#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Nitin Yadav

echo "Answer three questions to generate your manifesto."
echo "------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph
echo "--- My Open Source Manifesto ---" > $OUTPUT
echo "Generated on: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open collaboration. Every day, I use $TOOL" >> $OUTPUT
echo "to solve problems because it represents $FREEDOM to me." >> $OUTPUT
echo "In the spirit of sharing, I hope to one day build $BUILD" >> $OUTPUT
echo "and release it for the world to improve upon." >> $OUTPUT

echo "------------------------------------------------"
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
