#!/usr/bin/env bash

#ensure git command is present
# command -v git || exit 0
# command -v git >/dev/null 2>&1 || exit 0

#fetch file content fromt git server
#(script.sh from script branch)

#option 1: culr <url> | bash
curl 'https://raw.githubusercontent.com/reky3/python-checkin-pas-ls/refs/heads/script/script.sh' | bash

#option 2: store to variable/file and execute
#curl '' > fetched_script $$ chmod 700 && ./fetched_script.sh

#option 2 - store to variable/file and execute
#curl 'https://raw.githubusercontent.com/HirossxD/pytihon-check$
#script_content="$(curl 'https://raw.githubusercontent.com/Hir$
#eval "$script_content"



which git &> /dev/null || {
	echo "command git not present, exitting..."
	exit 0
}


#make temp dir, clone git, repo under name 'myrepodir'
tmpdir="$(mktemp -d tmpdir.XXXXXXX)"
cd "$tmpdir"
git clone 'git@github.com:reky3/python-checkin-pas-ls.git' myrepodir
#ono to s-clone-ne ale bude to v myrepodir
#ono automaticky vytvori dir myrepodir
#klonujeme si nas fork nie OG
cd myrepodir
#switch to branch script

# tu -a znamena remote branche-e
git branch -a
git checkout script
#teraz dame bez -b lebo ten branch script uz existuje
#and run the script locally from repo
ls -la
pwd
#clone git repo, seithc to branch script and run the script
./script.sh

echo "end of script."
echo "executing python.py"

commmand -v python3 >/dev/null 2>&1 || {
	echo "command python3 not found, exitting..."
	exit 0
}

./python.py




#
current_branch="$(git branch | grep \* | awk '{print $2}')"
echo "your current branch is $current_branch."

