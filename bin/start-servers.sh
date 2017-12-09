echo "Starting both servers"

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

git pull origin -f master:master
git pull origin -f live-reload:live-reload

coffee src/start-server.coffee &

cd ../hugo-worktree master
hugo
cd public

/pbx-group-security/node_modules/.bin/browser-sync \
    start --server          \
    --no-open               \
    reload --files="*.*"    \
    --reload-delay=200