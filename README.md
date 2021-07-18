# Cards

Praticando alguns conceitos em elixir

## Aprendizado

Fazer leitura de um arquivo binário.</br>
Criar um arquivo binário </br>
Trabalhar com pattern matching </br>
Trabalhando com módulos </br>
Operador pipe </br>

No exemplo abaixo transformou um arquivo binário em </br>
arquivo texto,por fim geramos um erro </br>
Ficar atento com as sintaxes,existe no auto complete sintaxes </br>
com ponto de exclamação, exemplo File.read!. Ao adicionar esse ! não assumo uma tupla. Ou seja </br>
código abaixo não funcionaria ja que estou assumindo que vai retornar um {:error } ou </br>
{:ok}

```elixir
def readFile(filename) do
     filename
     |> File.read()
     |> handle_read_file();
  end

  def handle_read_file({:ok, read }) do
    :erlang.binary_to_term read
  end

  def handle_read_file({:error, _red}) do
    "I Can't read file"
  end

```

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/cards](https://hexdocs.pm/cards).
