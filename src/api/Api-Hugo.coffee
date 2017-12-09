express     = require 'express'

String::exec = '..'.start_Process_Capture_Console_Out   # alias to run bash commands

class Api_Hugo
  constructor: (options)->
    @.options       = options || {}
    @.router        = express.Router()
    @.app           = @.options.app
    @.folder_Root   = (wallaby?.localProjectDir || __dirname.path_Combine('../..'))
    @.folder_Hugo   = @.folder_Root.path_Combine '../hugo-worktree'

  add_Routes: ()=>
    @.router.get  '/hugo/update'       , @.files
    @.router

  files: (req,res)=>
    process.chdir @.folder_Hugo;    # ensure we are in the correct folder
    'git'.exec 'pull','origin','master', (git_pull)->
      'hugo'.exec (hugo)->
        data =
          git_pull: git_pull
          hugo    : hugo

        res.json data

module.exports = Api_Hugo