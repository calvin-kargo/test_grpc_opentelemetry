defmodule TestGrpcOpentelemetryWeb.PageController do
  use TestGrpcOpentelemetryWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
