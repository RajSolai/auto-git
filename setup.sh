echo "🤗 Welcome to Auto-GIT setup ! 🤗"
echo "💻 Installing Dependencies"
echo "💻 Installing GIT and FIGLET !"
sudo apt install git figlet
if [ $? -eq 1 ]; then
    echo "😥 Cant Install" 
    echo "😥 Try With sudo"
else
    echo "🤩 Hurray try auto git now 🤩"
fi
