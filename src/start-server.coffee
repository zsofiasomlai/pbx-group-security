
Server = require './Server'

using new Server(), ->
      @.setup_Server()
      @.run()

      console.log "Hugo update server started at: #{@.server_Url()}"