# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ArrayOfPotentialChangeOrderLineItems do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :entities,
    :errors
  ]

  @type t :: %__MODULE__{
          :entities => [Procore.Model.Default.t()] | nil,
          :errors => [Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:entities, :list, Procore.Model.Default)
    |> Deserializer.deserialize(
      :errors,
      :list,
      Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInner
    )
  end
end