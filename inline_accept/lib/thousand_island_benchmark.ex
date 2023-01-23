defmodule ThousandIslandBenchmark do
  defmodule HTTPHelloWorld do
    @moduledoc """
    A sample Handler implementation of a simple HTTP Server. Intended to be the
    simplest thing that can answer a browser request and nothing more. Not even
    remotely strictly HTTP compliant.
    """

    use ThousandIsland.Handler

    @impl ThousandIsland.Handler
    def handle_data(_data, socket, state) do
      ThousandIsland.Socket.send(
        socket,
        "HTTP/1.1 200 OK\r\nContent-Length: 13\r\nConnection: close\r\n\r\nHello, world!"
      )

      {:close, state}
    end
  end
end
