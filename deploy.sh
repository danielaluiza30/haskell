git add . &&
git commit -m "$1" && 
git push origin master &&
ssh root@51.254.114.245<<EOF
cd haskell &&
git pull origin master &&
stack build &&
lsof -1:80 -Fp | sed 's/^p//' | head -n -1 | xargs kill -9;
nohup stack exec aulahaskell > /dev/null
echo "deploy finished"
EOF