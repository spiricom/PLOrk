for i in Patches/*; do zip -r "${i%/}.zip" "$i"; done
git add --all