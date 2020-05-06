function create_project() {
    cd
    source .env
    python $FILEPATH/auto_project_initialize/create.py $1
    cd $FILEPATH/$1
    git init
    git remote add origin git@github.com:$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}
