require 'socket'

@server = TCPSocket.open("112.74.102.93", 3008)
@server.puts("test")
