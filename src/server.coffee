sys = require 'sys'
http = require 'http'
ComfoAir = require 'rpi-comfoair'

comfolink = new ComfoAir '/dev/ttyAMA0'

http.createServer (req, res) ->
  res.writeHead 200, {'Content-Type': 'text/plain'}
  res.end 'Hello World 2\n'
.listen 1337, '192.168.178.44'
console.log 'Server running at http://192.168.178.44:1337/'

comfolink.on 'temp', (data) ->
  #console.log 'data received. '
  console.log data

