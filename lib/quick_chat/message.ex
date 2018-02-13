defmodule QuickChat.Message do
  alias QuickChat.Message
  defstruct text: "", time_stamp: nil
  
  @doc """
  Builds a message with a time_stamp
  """
  def new(text) do
    %Message{text: text, time_stamp: Time.utc_now()}
  end
end