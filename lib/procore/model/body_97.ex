# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body97 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :line_item
  ]

  @type t :: %__MODULE__{
          :line_item => Procore.Model.LineItem2.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:line_item, :struct, Procore.Model.LineItem2)
  end
end
