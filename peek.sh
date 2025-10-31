if [ $# -lt 2 ]; then
  echo "Usage: bash peek.sh <filename> <num_lines>"
  exit 1
fi

file=$1
num=$2

head -n "$num" "$file"

# Separator
echo "..."

tail -n "$num" "$file"
