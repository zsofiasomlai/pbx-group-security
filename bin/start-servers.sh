echo "Starting both servers"

coffee src/start-server.coffee &

cd ../hugo-worktree master
hugo
cd public

/pbx-group-security/node_modules/.bin/browser-sync start --server --no-open