# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BudgetedProductionQuantityBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :budgeted_production_quantity
  ]

  @type t :: %__MODULE__{
          :budgeted_production_quantity => Procore.Model.BudgetedProductionQuantity.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :budgeted_production_quantity,
      :struct,
      Procore.Model.BudgetedProductionQuantity
    )
  end
end