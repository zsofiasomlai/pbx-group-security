echo "Starting both servers"

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

git checkout master
git pull origin master:master

git checkout live-reload
git pull origin live-reload:live-reload

coffee src/start-server.coffee &

cd ../hugo-worktree master
hugo
cd public

/pbx-group-security/node_modules/.bin/browser-sync \
    start --server          \
    --no-open               \
    reload --files="*.*"    \
    --reload-delay=200