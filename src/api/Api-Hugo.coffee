express     = require 'express'

class Api_Hugo
  constructor: (options)->
    @.options       = options || {}
    @.router        = express.Router()
    @.app           = @.options.app
    @.folder_Root   = (wallaby?.localProjectDir || __dirname.path_Combine('../..'))
    @.folder_Hugo   = @.folder_Root.path_Combine 'hugo'

  add_Routes: ()=>
    @.router.get  '/hugo/files'       , @.files
    @.router

  files: (req,res)=>
    process.chdir @.folder_Root;    # ensure we are in the correct folder
    'git'.start_Process_Capture_Console_Out 'status', (data)->
        res.json data
        #folder_Hugo: @.folder_Root
        #folders    : @.folder_Hugo.folders().folder_Names()

module.exports = Api_Hugo