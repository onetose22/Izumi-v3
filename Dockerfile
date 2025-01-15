FROM quay.io/eypzgod/izumi:latest
RUN git clone https://github.com/sataniceypz/Izumi-v3 /root/bot/
WORKDIR /root/bot/
RUN npm install -g pm2
RUN npm install
CMD ["pm2-runtime", "ecosystem.config.js"]
