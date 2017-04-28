git stash
git pull origin master
cd ./Patches;
rm -rf */;
for i in *.zip; do echo "${i%/}" && echo "${i%.*}" && unzip "${i%/}" -d "."; done

cd ..;