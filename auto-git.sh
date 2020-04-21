clear
figlet -c "AUTO git"
test -d ".git"
if [ $? -eq 0 ]; then
    echo "😍 This a Git Directory hurray !"
    read -p "❓❓ Ready to PUSH ( PRESS ENTER TO CONTINUE ) :" 
    echo "🔥 Adding all files to be pushed...."
    git add .
    read -p "👉 Enter the Commit Message :" commit_message
    git commit -m $commit_message
    git push origin master
    if [ $? -eq 0 ]; then
        echo "💥 💥Repo Commited SuccessFully ! 💥 💥"
    fi
else
    echo "😭 This doesnt seem to be a GIT Directory"
    echo "🔥 Dont worry let me initiate the repo"
    git init
    echo "🔥 GIT Repo initiated !"
    echo "commited with auto-git 💘" > README.md
    echo "🔥 Doing First Commit !"
    git add .
    git commit -m "Repo init"
    echo "👉 Enter the Git URL"
    read -r giturl
    echo "🔥 Commiting in the Master Branch"
    git remote add origin $giturl
    git push origin master
    if [ $? -eq 0 ]; then
        echo "💥 💥Repo Created SuccessFully ! 💥 💥"
    fi
fi
