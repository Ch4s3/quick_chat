defmodule QuickChat.Chat do
  alias QuickChat.Message
  use GenServer

  # Callbacks
  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def init(state) do
    {:ok, state}
  end


  def send_message(pid, message) do
    GenServer.cast(pid, {:send_message, message})
  end

  def get_messages(pid, time_stamp) do
    GenServer.call(pid, {:get_messages_since, time_stamp})
  end

  def handle_call({:get_messages_since, _time_stamp}, _from, state) do
    {:reply, state, state}
  end

  def handle_cast({:send_message, message}, state) do
    {:noreply, [Message.new(message) | state]}
  end
end