FROM nodesource/nsolid:alpine
ENV VBOT_TOKEN="" \
  VBOT_GUILD="" \
  VBOT_CHANNEL="" \
  VBOT_PORT="37405"
WORKDIR /opt
RUN apk update \
  && apk add --no-cache \
    bash \
    git \
  && git clone https://github.com/marceltransier/ttt_discord_bot.git
WORKDIR /opt/ttt_discord_bot/discord_bot
COPY ./entrypoint.sh ./
COPY ./update_cfg.js ./
RUN npm install \
  && cp config.json.example config.json \
  && chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
