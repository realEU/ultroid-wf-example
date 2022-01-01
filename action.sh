git clone https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp .env /root/TeamUltroid/.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
