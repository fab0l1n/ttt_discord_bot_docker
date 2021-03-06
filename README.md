# ttt_discord_bot_docker
Dockerized [TTT_Discord_Bot](https://github.com/marceltransier/ttt_discord_bot)
This is just the nodejs part; you will have to copy files to your garrysmod/addons folder and update server.cfg.
#### Note: Due to some issues the Steam Workshop item is not working atm, so you will have to copy the addon files manually (-> see Setup)

## Usage
```
docker create
  --name=ttt_bot 
  -e VBOT_TOKEN=<YOUR_BOT_TOKEN> 
  -e VBOT_GUILD=<YOUR_GUILD_ID> 
  -e VBOT_CHANNEL=<YOUR_CHANNEL_ID>
  -p 37405:37405 \
  fab0l1n/ttt_discord_bot
```

## Requirements
1. Working TTT installation (I'm using [this container](https://hub.docker.com/r/hackebein/garrysmod))

## Setup
[Steam Workshop item with explanation](https://steamcommunity.com/sharedfiles/filedetails/?id=1350367721)
1. Create and permit Discord bot ([see here](https://github.com/marceltransier/ttt_discord_bot#installation))
2. Create container as described above; you can start it using `docker start ttt_bot`
3. Copy the folder 'gmod_addon' from [the original project](https://github.com/marceltransier/ttt_discord_bot) to your garrysmod/addons folder. (the steam workshop item is deprecated; don't use it!)
4. Add this line to your garrysmod/cfg/server.cfg: `discordbot_host "<hostname or ip of your TTT_Discord_bot>"` (localhost does not work!)
5. Restart your srcds (garrysmod server)
6. You should now be able to connect your IGN and Discord typing `!discord name#tag` in in-game chat ([as described here](https://github.com/marceltransier/ttt_discord_bot#usage))
