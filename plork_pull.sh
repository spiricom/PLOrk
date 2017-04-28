#cd ~/PLOrk
git stash
git pull origin master
for i in ./Patches/*.zip; do unzip "${i%/}" -d "${i%.*}"; done