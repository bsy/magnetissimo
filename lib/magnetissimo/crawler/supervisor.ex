defmodule Magnetissimo.Crawler.Supervisor do
  use Supervisor
  require Logger
  alias Magnetissimo.Crawler.{Demonoid, EZTV, Leetx, Monova,
                              ThePirateBay, TorrentDownloads,
                              WorldWideTorrents, Zooqle}

  def start_link(arg) do
    Logger.info "Starting Crawler Supervisor"
    Supervisor.start_link(__MODULE__, arg, name: __MODULE__)
  end

  def init(_arg) do
    children = [
      # {Demonoid, []},
      # {EZTV, []},
      # {Leetx, []},
      # {Monova, []},
      # {ThePirateBay, []},
      {TorrentDownloads, []},
      # {WorldWideTorrents, []},
      # {Zooqle, []},
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end