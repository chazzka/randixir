# Randixir

**Random generator for elixir based on Erlang/OTP, the recommended package for random**

## Installation

The package can be installed by adding `randixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:randixir, "~> 0.1.0"}
  ]
end
```

The docs can be found at <https://hexdocs.pm/randixir>.



## Usage
first, generate seed

```elixir
:rand.seed(:exsplus, {13999, 2352, 15231})
```

#### Generate int

- supply only max (inclusive), defaulting min to 0

```elixir
Randixir.int(5)
```

- supply min and max, both inclusive

```elixir
Randixir.int(0,5)
```

#### Generate float

- supply only max (inclusive), defaulting min to 0

```elixir
Randixir.float(5.0)
```

- supply min and max, both inclusive

```elixir
Randixir.float(0.0,5.0)
```


