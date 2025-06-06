# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkOrderContractsWorkOrderContractIdLineItemsSyncPatch200ResponseEntitiesInnerChangeEventLineItem do
  @moduledoc """
  Change Event Line Item
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :cost_rom,
    :revenue_rom,
    :event_id,
    :cost_code,
    :line_item_type
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :cost_rom => String.t() | nil,
          :revenue_rom => String.t() | nil,
          :event_id => integer() | nil,
          :cost_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode.t() | nil,
          :line_item_type => Procore.Model.LineItemType.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :cost_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode
    )
    |> Deserializer.deserialize(:line_item_type, :struct, Procore.Model.LineItemType)
  end
end
