sudo apt install axel 
mkdir temp 
cd temp 

axel -n 20 http://repo1.maven.org/maven2/com/madgag/bfg/1.12.16/bfg-1.12.16.jar
mv bfg-1.12.16.jar bfg.jar
git clone --mirror git:xxxxxxx.git

java -jar bfg.jar --strip-blobs-bigger-than 100M xxxxxxxx.git

cd xxxxx.git
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push
