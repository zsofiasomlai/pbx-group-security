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
      res.json
        folder_Hugo: @.folder_Root
        folders    : @.folder_Root.folders().folder_Names()

module.exports = Api_Hugo