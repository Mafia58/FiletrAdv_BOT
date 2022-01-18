if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mafia58/FiletrAdv_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FiletrAdv_BOT
fi
cd /FiletrAdv_BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
