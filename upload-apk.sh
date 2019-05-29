mkdir buildApk/
cp -R app/build/outputs/apk/app-debug.apk $HOME/android/
cd $HOME
git config --global user.email "gp3917@ic.ac.uk"
git config --global user.name "PereteanuGeorge"

git clone --quiet --branch=master  https://PereteanuGeorge:$GITHUB_API_KEY@github.com/PereteanuGeorge/HelloWorld  master > /dev/null

cd master  cp -Rf android/* .
#add, commit and push files
git add -f .
git remote add origin https://PereteanuGeorge:$GITHUB_API_KEY@github.com/PereteanuGeorge/HelloWorld.git
git add -f .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed"
git push -fq origin master > /dev/null
echo -e "Donen"