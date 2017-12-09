echo "Starting both servers"

coffee src/start-server.coffee &

cd ../../bin
cd ../hugo-worktree master
hugo
cd public
browser-sync start --server --no-open