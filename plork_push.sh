dt=$(date '+%d/%m/%Y %H:%M:%S');
mess='PLOrk repo update: ';
mess+="$dt";
find ./Patches/ -name "*.zip" -type f|xargs rm -f;
for i in ./Patches/*; do zip -r "../${i##/*}.zip" *; done
git add --all
git commit -m "$mess"
git push origin $1