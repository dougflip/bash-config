# python goodness
pylint(){
  docker run --rm -v "$(pwd)":/app quay.io/lightside/flake8 /app "$@";
}

alias pyc="find . -name \"*.pyc\" -print -exec rm \"{}\" \;"
