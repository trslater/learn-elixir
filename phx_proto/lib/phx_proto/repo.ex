defmodule PhxProto.Repo do
  use Ecto.Repo,
    otp_app: :phx_proto,
    adapter: Ecto.Adapters.SQLite3
end
