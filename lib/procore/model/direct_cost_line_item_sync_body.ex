# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.DirectCostLineItemSyncBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :updates
  ]

  @type t :: %__MODULE__{
          :updates => [Procore.Model.LineItem.t()]
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:updates, :list, Procore.Model.LineItem)
  end
end
