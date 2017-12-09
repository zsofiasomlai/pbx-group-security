echo "Starting both servers"

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

gic checkout master
git pull origin -f master:master
gic checkout live-reload
git pull origin -f live-reload:live-reload

echo "all done"
exit 0

coffee src/start-server.coffee &

cd ../hugo-worktree master
hugo
cd public

/pbx-group-security/node_modules/.bin/browser-sync \
    start --server          \
    --no-open               \
    reload --files="*.*"    \
    --reload-delay=200