const fs = require('fs');
var data = require('./config.json');
data.discord.token=process.env.VBOT_TOKEN||data.discord.token;
data.discord.guild=process.env.VBOT_GUILD||data.discord.guild;
data.discord.channel=process.env.VBOT_CHANNEL||data.discord.channel;
data.server.port=process.env.VBOT_PORT||data.server.port;
fs.writeFileSync('./config.json', JSON.stringify(data, null, 4));

