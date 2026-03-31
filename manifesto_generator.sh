#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Nithish | Course: Open Source Software
# Description: Creates a personalised open source philosophy manifesto

echo "=== Open Source Manifesto Generator ==="
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create the manifesto paragraph
cat > "$OUTPUT" << EOF
====================================
Open Source Manifesto — $DATE
====================================

I believe in the power of open source. 
Every day I use $TOOL, which reminds me that technology should be built by the community, not locked behind paywalls. 
To me, 'freedom' means $FREEDOM — the freedom to use, study, modify, and share.

If I could build one thing and share it freely with the world, it would be $BUILD.

I stand on the shoulders of giants like the creators of Apache, Linux, and countless other tools. 
Open source is not just software — it is a philosophy of sharing knowledge for the benefit of all humanity.

— Nithish
====================================
EOF

echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo "Here is your manifesto:"
cat "$OUTPUT"
