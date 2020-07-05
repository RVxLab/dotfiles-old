local LARADOCK_CONTAINERS="nginx mariadb phpmyadmin workspace php-fpm"

# Apt
alias apt='sudo apt'
alias au='apt update'
alias adu='apt dist-upgrade'
alias audu='au && adu'

# Laradock
alias cdld="cd $LARADOCK_LOCATION"
alias ldup="cdlp && docker-compose up $LARADOCK_CONTAINERS"
alias ldbuild="cdlp && docker-compose build $LARADOCK_CONTAINERS"
