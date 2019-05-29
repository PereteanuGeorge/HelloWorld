mkdir $HOME/buildApk/
mkdir $HOME/android/

cp -R app/build/outputs/apk/*.apk $HOME/android/
cd $HOME
git config --global user.email "gp3917@ic.ac.uk"
git config --global user.name "PereteanuGeorge"

git clone --depth=10 --branch=master  https://PereteanuGeorge:$GITHUB_API_KEY@github.com/PereteanuGeorge/HelloWorld  master > /dev/null
cd master
cp -Rf $HOME/android/* .

git add -A
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed"
git push -fq origin master > /dev/null
echo "Done"