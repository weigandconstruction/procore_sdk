# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.FinancialMarkupMarkupConditionsInnerMarkupConditionItemsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :wbs_segment_item_id
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :wbs_segment_item_id => integer() | nil
        }

  def decode(value) do
    value
  end
end
