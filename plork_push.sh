dt=$(date '+%d/%m/%Y %H:%M:%S');
mess='PLOrk repo update: ';
mess+="$dt";
find ./Patches/ -name "*.zip" -type f|xargs rm -f;
cd ./Patches;

for i in *; do name="$i" && name+=".zip" &&  zip -r "$name" "$i"; done

cd ..;
git add --all
git commit -m "$mess"
git push origin $1