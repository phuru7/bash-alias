#alias
alias la='ls -A'
alias fn='find . -iname'
alias cc='clear'
alias ..='cd ..'
alias py='python3'
alias rs='python manage.py runserver'

alias gd='git diff'
alias gc='git commit'
alias gb='git branch'
alias ga='git add'
alias br='git checkout -b'


##bashrc functions
function replace(){
 STR=$1
 REP_STR=$2
 grep -l $1 | xargs sed -i s/$STR/$REP_STR/g;
}
#The function ‘replace’ is substituting a string with another string in all your files in the current directory without opening each file. $1 refers to the string to be substituted. $2 refers to the new string.

function column(){
 local sql_table="SELECT table_schema,table_name FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME ILIKE '%$1%' ORDER BY TABLE_NAME;"
 eval 'psql -c "$sql_table"'
}
#The function ‘column’ can be used to hit some psql queries without using the psql client.

function nv(){
 cd /home/badal/ti_fastapi/;
 conda activate fast;
}
#The function ‘nv’ can be used to enter your project and activate your environment in a single command
