find ./Patches/ -name "*.zip" -type f|xargs rm -f;
for i in ./Patches/*; do zip -r "${i%/}.zip" "$i"; done
git add --all;
git -am $2;
git push origin $1;