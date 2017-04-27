find ./Patches/ -name "*.zip" -type f|xargs rm -f;
for i in ./Patches/*; do zip -r "${i%/}.zip" "$i"; done
git add --all
git commit -m $1
git push origin $2