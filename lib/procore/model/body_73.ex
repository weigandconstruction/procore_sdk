# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body73 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :company_id,
    :line_item_type
  ]

  @type t :: %__MODULE__{
          :company_id => integer(),
          :line_item_type => Procore.Model.LineItemType2.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:line_item_type, :struct, Procore.Model.LineItemType2)
  end
end
