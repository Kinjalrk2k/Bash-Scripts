remote=$1

username=""
email=""

cmd="git clone ${remote:0:4}${username}.${remote:4}"
eval $cmd

git=$(echo $remote| cut -d'/' -f 2)
dir=${git:0:$((${#git} - 3 - 1))}

cdto="cd ${dir}"

eval $cdto

setUsername="git config user.name \"${username}\""
setEmail="git config user.email \"${email}\""

eval $setUsername
eval $setEmail

eval "cd .."