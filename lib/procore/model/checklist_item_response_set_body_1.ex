# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistItemResponseSetBody1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :response_set
  ]

  @type t :: %__MODULE__{
          :response_set => Procore.Model.ItemResponseSet1.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:response_set, :struct, Procore.Model.ItemResponseSet1)
  end
end