git clone -b beta https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp .env /root/TeamUltroid/.env
cd /root/TeamUltroid
pip3 install cfscrape
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
