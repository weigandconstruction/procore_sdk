# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ArrayOfPotentialChangeOrdersEntitiesInnerLineItemsInnerMarkupLineItemsInnerMarkupDestinationCostCode do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :full_code,
    :name
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :full_code => String.t() | nil,
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
