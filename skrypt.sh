if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
  echo "--date -d     Display current date"
  echo "--logs -l     Create log files (default 100)"
  echo "--help -h     Display this help message"
elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
  num_files=${2:-100}
  for i in $(seq 1 $num_files); do
    echo "log$i.txt" > "log$i.txt"
    echo "Created by skrypt.sh on $(date)" >> "log$i.txt"
  done
elif [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
  date
fi

if [ "$1" == "--init" ]; then
  git clone <URL-do-repozytorium>
  export PATH=$PATH:$(pwd)
fi

if [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
  num_files=${2:-100}
  mkdir -p error
  for i in $(seq 1 $num_files); do
    echo "error$i/error$i.txt" > "error/error$i.txt"
    echo "Created by skrypt.sh on $(date)" >> "error/error$i.txt"
  done
fi







