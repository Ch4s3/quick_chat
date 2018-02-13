defmodule QuickChat.Router do
  use Plug.Router
  plug :match
  plug :dispatch

  get "/messages" do
    send_resp(conn, 200, "this will return messages soon")
  end

  post "/message" do
    send_resp(conn, 501, "nothing to post to yet")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end