require 'fluentnode'

express = require 'express'

class Server
  constructor: (options)->
    @.app         = null
    @.options     = options || {}
    @.server      = null
    @.port        = @.options.port || process.env.PORT || 3000


  run: (random_Port)=>
    if random_Port
      @.port = 23000 + 3000.random()
    @.setup_Routes()
    @.start_Server()
    @

  setup_Server: =>
    @.app = express()
    @

  setup_Routes: =>
    @.app.get '/',  (req, res)->
      res.json { default: 'route'}

    Api_Hugo = require './api/Api-Hugo'

    @.app.use new Api_Hugo(app:@.app).add_Routes()

  start_Server: =>
    @.server = @.app.listen @.port

  server_Url: =>
    "http://localhost:#{@.port}"

  stop: (callback)=>
    if @.server
      @.server.close =>
        callback() if callback

  get_JSON: (virtual_Path, callback)->
    @.server_Url().add(virtual_Path).GET (data)->
      callback data.json_Parse()

module.exports = Server