#!/bin/zsh sh

export GOROOT="/usr/lib/go"
export PATH="$PATH:$GOROOT/bin"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$GOPATH/bin:$PATH"

# GO
alias gobi="go build . && go install"
alias goi="go install"
alias gob="go build"
alias gor="go run"
alias gon="go run ."
alias goy="go mod tidy"

goat () {
    echo " "
    if [[ $1 == "" ]]; then
        echo "$(tput setaf 1) ** Missing App Name Option ** \n"
        echo -n "$(tput setaf 2) got"
        echo -n "$(tput setaf 3) <app-name> \n"
        echo " "
        return 0
    fi
    pwd=$(pwd)
    mkdir -p $HOME/go/src/github.com/Pheon-Dev/$1
    cd $HOME/go/src/github.com/Pheon-Dev/$1
    echo " "
    echo -e "$(tput setaf 6)Initializing App ..."
    echo "$(tput setaf 2)"
    go mod init github.com/Pheon-Dev/$1
    echo " "
    echo -e "$(tput setaf 6)Initializing Cobra ..."
    echo "$(tput setaf 2)"
    cobra-cli init || go install github.com/spf13/cobra-cli@latest
    go mod tidy
    echo " "
    echo -n "$(tput setaf 6)Running your newly created"
    echo -n "$(tput setaf 4) $1 app "
    echo -e "$(tput setaf 6): "
    echo "$(tput setaf 5)"
    go run .
    gt -i $1
    echo " "
    echo -n "$(tput setaf 6)Edit the newly created"
    echo -n "$(tput setaf 4) $1 app "
    echo -n "$(tput setaf 6)using your favourite"
    echo -n "$(tput setaf 3) $EDITOR "
    echo -n "$(tput setaf 6)editor (y/n)? "
    read edit
    if [[ $edit == "y" ]]; then
        echo " "
        $EDITOR
        return 0
    fi
    echo " "
    echo -n "$(tput setaf 6)Return to previous"
    echo -n "$(tput setaf 4) $pwd "
    echo -n "$(tput setaf 6)directory (y/n)? "
    read cwd
    if [[ $cwd == "y" ]]; then
        echo " "
        wd=$(pwd)
        echo -n "$(tput setaf 6)You can always edit your"
        echo -n "$(tput setaf 4) $1 app "
        echo -e "$(tput setaf 6)from:"
        echo -e "$(tput setaf 3) → $wd \n"
        echo -e "$(tput setaf 6)Good bye and thank you!"
        echo " "
        cd $pwd
        return 0
    fi
    echo " "
    echo -e "$(tput setaf 6)Files Created :\n"
    exa -la
    echo " "
}
