alias dm="docker-machine"
alias dms="docker-machine start"
alias dmst="docker-machine stop"
alias dc="docker-compose"
alias dc-down="docker-compose down"
alias dc-downv="docker-compose down -v"

dcbash(){
    docker-compose exec ${PWD##*/} bash
}

dcpostgres(){
    docker-compose exec postgres psql -U postgres
}

dmv(){
    eval $(dm env)
}
