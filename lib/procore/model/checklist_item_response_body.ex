# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistItemResponseBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :item_response
  ]

  @type t :: %__MODULE__{
          :item_response => Procore.Model.ItemResponse.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:item_response, :struct, Procore.Model.ItemResponse)
  end
end
