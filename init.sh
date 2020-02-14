#!bin/bash

function def_parent_path() { # run this once
    # navigate to current directory
    cd "$( dirname "${BASH_SOURCE[0]}" )"

    # delete previous path.py
    rm parent_path.py

    # create project parent path
    PARENT_PATH=$1
    echo '# project parent path' >> parent_path.py
    echo "parent_path = '$PARENT_PATH'" >> parent_path.py
}

function def_github_cred() {
    # navigate to current directory
    cd "$( dirname "${BASH_SOURCE[0]}" )"

    # delete previous github_cred.py
    rm github_cred.py

    # setup github credentials
    USERNAME=$1
    PASSWORD=$2
    echo '# github credentials' >> github_cred.py
    echo "username = '$USERNAME'" >> github_cred.py
    echo "password = '$PASSWORD'" >> github_cred.py
}

function init() {
    # navigate to code directory
    cd "$( dirname "${BASH_SOURCE[0]}" )"

    # read parent path from parent_path.py
    PARENT_PATH=$(grep -o "'.*'" parent_path.py | tr -d "'")

    # execute github.py
    python github_create_repo.py $1

    # create directory and files
    cd $PARENT_PATH
    mkdir $1
    cd $1/
    mkdir css
    mkdir js
    cd css/
    touch styles.css
    cd $PARENT_PATH/$1/
    cd js/
    touch scripts.js
    cd $PARENT_PATH/$1/
    mkdir img
    touch index.html
    touch README.md

    # navigate back to code directory to run .py
    cd "$( dirname "${BASH_SOURCE[0]}" )"
    # additional features, comment to disable
    python bootstrap.py $1
    python jquery.py $1

    # navigate to project directory
    cd $PARENT_PATH/$1/
    # github initial commit
    sleep 5
    git init
    git remote add origin git@github.com:jiajunyuan/$1.git
    git add .
    git commit -m 'Initial commit'
    git push origin master
    # code .
}