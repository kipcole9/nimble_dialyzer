defmodule NimbleDia do
  @moduledoc false

  import NimbleParsec

  def message do
		ignore(optional(whitespace()))
  end

  def whitespace do
    repeat(ascii_char([?\s, ?\t, ?\n]))
  end

  def message2 do
		ignore(optional(whitespace2()))
  end

  def whitespace2 do
		choice([
			ascii_char([?\s, ?\t, ?\n])
		])
  end

end
