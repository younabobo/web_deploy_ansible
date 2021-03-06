cd /web/www/Mtek
git reset --hard HEAD
git pull origin master
yarn install
yarn build
cd /web/www/html &&
rm -rf asset-manifest.json logo* manifest.json precache* robots.txt service-worker.js static/ index.html favicon.ico rules_mtek
cd /web/www &&
cp Mtek/build/* html/ -rf &&
cp Mtek/rules_mtek html/rules_mtek -rf &&
cd html &&
chmod g+rx static -R &&
chmod g+rx rules_mtek -R &&
chmod g+rx index.html asset-manifest.json logo* manifest.json precache* robots.txt service-worker.js favicon.ico
