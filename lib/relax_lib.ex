defmodule RelaxLib do
  @moduledoc """
  RelaxLib. 包含一些常用的方法
  """

  @doc """
  Hello world.

  ## Examples

      iex> RelaxLib.hello
      :world

  """
  def hello do
    :world
  end

  defdelegate log_debug(info \\ nil, opts \\ []), to: RelaxLib.Util.Logger
  defdelegate log_info(info \\ nil, opts \\ []), to: RelaxLib.Util.Logger
  defdelegate log_warn(info \\ nil, opts \\ []), to: RelaxLib.Util.Logger
  defdelegate log_error(info \\ nil, opts \\ []), to: RelaxLib.Util.Logger
  defdelegate log_inspect(info \\ nil, opts \\ []), to: RelaxLib.Util.Logger
  def log(info \\ nil, opts \\ []) do
    case Logger.level do
      :debug -> log_debug(info, opts)
      :info  -> log_info(info, opts)
      :warn  -> log_warn(info, opts)
      :error -> log_error(info, opts)
      _ -> log_debug(info, opts)
    end
  end

end
