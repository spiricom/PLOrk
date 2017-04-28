#cd ~/PLOrk
git stash
git pull origin master
cd ./Patches;
for i in *.zip; do unzip "${i%/}" -d "${i%.*}"; done