# tg-shellbot-heroku

https://github.com/botgram/shell-bot

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/ssnjrthegr8/tg-shellbot-heroku.git)

You can deploy without forking to test it out. I highly recommend forking this repo so that you can customise it as you want:

## Instructions:
* Fork this repo
* Go to: `https://heroku.com/deploy?template=https://github.com/<YOUR_USERNAME_HERE>/tg-shellbot-heroku`
* Fill everything in and deploy
* Go to: `https://dashboard.heroku.com/apps/<YOUR_HEROKU_APP_NAME>/resources` and turn on the worker
* Go to: `https://dashboard.heroku.com/<YOUR_HEROKU_APP_NAME>/deploy/github`and connect your forked repo and enable auto-deploy
* Edit your extras.sh and startup.sh, the app will redeploy everytime you edit stuff.
* If you want a file to be copied to heroku dyno, put it in the /stuff folder in your repo. Make your repo private ( don't forget to connect yout github account to heroku) if you don't want your sensitive files shown to everyone in the world

## extras.sh and startup.sh explained:
A heroku dyno will restart every 24 hrs and resets everything. In order to make it start up quickly, the installation and startup scripts are separated.

### extras.sh
Everything you need to install, you need to write it into this file. By connecting your forked version of this repo and your heroku app, you can seamlessly redeploy everytime you add something in using github

### startup.sh
This script is reserved for adding in commands before the bot starts. If any configuration or setup is required, it should be written to this file as heroku resets every 24 hrs.

### Example:
Say you want to install [rclone](https://rclone.org/install/). You put the installation command in extras.sh and the configuration file in the /stuff folder. In the startup.sh you put in the command for copying the config file to the correct destination.
