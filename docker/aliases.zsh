alias docker-init='eval $(docker-machine env default)'
alias jupyter-scala='docker run --rm -it -p 8888:8888 dockoey/jupyter-scala:latest'

alias docker-rm-stopped='docker rm $(docker ps -a -q)'
alias docker-rmi-none=$'docker rmi $(docker images | grep "^<none>" | awk \'{print $3}\')'
