# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdBudgetChangesPost201ResponseDataAllOfAdjustmentLineItemsInnerChangeEventLineItem do
  @moduledoc """
  change event line item simple object
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :event_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :event_id => integer() | nil
        }

  def decode(value) do
    value
  end
end
