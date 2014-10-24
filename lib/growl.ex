defmodule Growl do

  @moduledoc """
  A simple wrapper for the command line interface of the growl notification system
  for Mac OSX
  """

  @doc """
  Method to the growlnotify binary
  """
  def notify(string, args \\ "") do
    if String.length(System.cmd("which growlnotify")) == 0 do
      raise "Please install growl before using this package"
    end

    System.cmd("growlnotify #{format_message(string)} #{format_args(args)}")
  end

  defp format_message(string) do
    cond do
      is_list(string) -> Enum.join(string, "'\n'")
      is_binary(string) -> string
    end
  end

  defp format_args(args) do
    cond do
      is_list(args) -> Enum.join(args, " ")
      is_binary(args) -> args
    end
  end

end
