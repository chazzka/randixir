defmodule Randixir do
  @moduledoc """
  Documentation for `Randixir`.

  Before using, supply a seed, i.e:

  iex> :rand.seed(:exsplus, {13999, 2352, 15231})

  """

  @doc """
  Generate random int from 0 to max, inclusive

  ## Examples
      iex> :rand.seed(:exsplus, {13999, 2352, 15231})
      iex> Randixir.int(5)
      4
  """
  def int(max) when max > 0 do
    int(0, max)
  end

  @doc """
  Generate random int from min to max, both inclusive (defaulting to 0 - 10)

  ## Examples
      iex> :rand.seed(:exsplus, {13999, 2352, 15231})
      iex> Randixir.int(0,5)
      4
  """
  def int(min \\ 0, max \\ 10)
      when min <= max do
    min + :rand.uniform(max - min + 1) - 1
  end

  @doc """
  Generate random float from 0.0 to max, inclusive

  ## Examples
      iex> :rand.seed(:exsplus, {13999, 2352, 15231})
      iex> Randixir.float(1.0)
      0.5365612603062836
  """
  def float(max) when max > 0.0 do
    float(0.0, max)
  end

  @doc """
  Generate random float from min to max (defaulting to 0.0 - 1.0)

  ## Examples
      iex> :rand.seed(:exsplus, {13999, 2352, 15231})
      iex> Randixir.float(0,1)
      0.5365612603062836
  """
  def float(min \\ 0.0, max \\ 1.0)
      when min <= max do
    min + :rand.uniform() * (max - min)
  end
end
