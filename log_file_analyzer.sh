#!/bin/bash
# Script 4: Log File Analyzer
# Author: Nithish | Course: Open Source Software
# Usage: ./log_file_analyzer.sh /path/to/logfile [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is 'error'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

echo "Analyzing log file: $LOGFILE"
echo "Searching for keyword: '$KEYWORD'"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "✅ Summary: Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines (if any)
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo ""
echo "Log analysis completed."
