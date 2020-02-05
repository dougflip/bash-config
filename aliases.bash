# general shortcuts
alias ll='ls -alh'
alias la='ls -al'

# lux
alias lux-update="./update-projects.sh && git submodule init && git submodule update --recursive"
for dir in ~/Projects/lux/projects/*; do
    alias `basename $dir`="cd $dir"; done

# frontend shortcuts util functions
frap() {
    if [ -z "$1" ]
    then
     cd_and_nvm_use ~/Projects/frontend-ra-provider
    else
     yarn start --color="$1"
    fi
}

consumer() {
    if [ -z "$1" ]
    then
     cd_and_nvm_use ~/Projects/frontend-ra-consumer
    else
     yarn start --color="$1"
    fi
}

cd_and_nvm_use() {
    cd $1 || exit
    if [ -e "$1/.nvmrc" ]
    then
        nvm use
    fi
}

# cd shortcuts
alias consumer+="consumer && atom ."
alias frap+="frap && atom ."
alias provider=frap
alias provider+=frap+

# make everything in ~/Projects an alias
for dir in ~/Projects/*; do
    alias $(basename $dir)="cd_and_nvm_use $dir";
    alias $(basename $dir)+="cd_and_nvm_use $dir && atom ."; done
