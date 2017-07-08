defmodule Ui.Web.DataChannel do
  use Phoenix.Channel

  def join("data:shopping_list", _message, socket) do
    {:ok, socket}
  end

end