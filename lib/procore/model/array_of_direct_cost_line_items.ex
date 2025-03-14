# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ArrayOfDirectCostLineItems do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :entities,
    :errors
  ]

  @type t :: %__MODULE__{
          :entities =>
            [
              Procore.Model.RestV10ProjectsProjectIdDirectCostsDirectCostIdLineItemsGet200ResponseInner.t()
            ]
            | nil,
          :errors => [Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :entities,
      :list,
      Procore.Model.RestV10ProjectsProjectIdDirectCostsDirectCostIdLineItemsGet200ResponseInner
    )
    |> Deserializer.deserialize(
      :errors,
      :list,
      Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInner
    )
  end
end
