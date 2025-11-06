# Check that at least one argument is provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 <file1> [file2 ...]"
  exit 1
fi

# Loop through all files provided as arguments
for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "File '$file' not found"
  else
    nlines=$(wc -l < "$file")

    if [ "$nlines" -eq 0 ]; then
      echo "$file: 0 lines"
    elif [ "$nlines" -eq 1 ]; then
      echo "$file: 1 line"
    else
      echo "$file: $nlines lines"
    fi
  fi
done
