defmodule Cards do
  def  create_deck do
     ["Ace","Two","Three"]
  end

  def shuffle(deck) do
    #vou embaralhar tudo
    Enum.shuffle(deck)
  end

  def contain(deck,elment ) do
    #vou verificar se dentro de uma lista contem o elemento
    #exemplo contain([one,two],"two"), vai retornar true
    Enum.member?(deck,elment)
  end

  def saveFile(deck,filename) do
     salveFile = :erlang.term_to_binary(deck)
     File.write(filename,salveFile)
  end

  def readFile(filename) do
     filename
     |> File.read()
     |> handle_read_file();
     #cuidado com os ! nas sintaxes,por exemplo para leitura,maneira correta
     # e File.read nao File.read! . File.read! nao retorna tupla ou seja error
     # or ok
  end

  def handle_read_file({:ok, read }) do
    :erlang.binary_to_term read
  end

  def handle_read_file({:error, _red}) do
    "I Can't read file"
  end


end
