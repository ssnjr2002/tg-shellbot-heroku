# tg-shellbot-heroku

https://github.com/botgram/shell-bot

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/ssnjrthegr8/tg-shellbot-heroku.git)

You can deploy without cloning this repo to test it out.

## Instructions:
* Click on "<b>Use this template</b>" if you want to make your repo private (forking wont allow the repo to be private).
* Edit your [config.sh](https://github.com/ssnjrthegr8/tg-shellbot-heroku/blob/master/config.sh) It's a bash script which gets executed while the Dockerfile builds the image. Everything you need to install and setup needs to be written down here.
* Open your version of this repo and in the address bar add this: `https://heroku.com/deploy?template=` as the prefix.
* Fill everything in and deploy. After its finished click <b>manage app</b> and go to <b>resources</b> tab and turn on the <b>worker</b>.
* Now click on the <b>deploy</b> tab, connect your github account and then connect your repo. This way you can edit config.sh through Github web and the app will automatically redeploy and apply changes.
* If you want a file to be copied to heroku dyno, put it in the <b>stuff</b> folder in your repo. Make your repo private if you don't want your sensitive files be shown to the public.