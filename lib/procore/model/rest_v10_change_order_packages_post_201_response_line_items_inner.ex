# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ChangeOrderPackagesPost201ResponseLineItemsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :position,
    :description,
    :quantity,
    :uom,
    :total_amount,
    :extended_amount,
    :cost_code,
    :wbs_code,
    :unit_cost,
    :holder,
    :line_item_type,
    :markup_line_items,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :position => integer() | nil,
          :description => String.t() | nil,
          :quantity => String.t() | nil,
          :uom => String.t() | nil,
          :total_amount => String.t() | nil,
          :extended_amount => String.t() | nil,
          :cost_code =>
            Procore.Model.RestV10ChangeOrderPackagesPost201ResponseLineItemsInnerCostCode.t()
            | nil,
          :wbs_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode.t() | nil,
          :unit_cost => String.t() | nil,
          :holder =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerHolder.t() | nil,
          :line_item_type => Procore.Model.LineItemType4.t() | nil,
          :markup_line_items =>
            [
              Procore.Model.RestV10ChangeOrderPackagesPost201ResponseLineItemsInnerMarkupLineItemsInner.t()
            ]
            | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :cost_code,
      :struct,
      Procore.Model.RestV10ChangeOrderPackagesPost201ResponseLineItemsInnerCostCode
    )
    |> Deserializer.deserialize(
      :wbs_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode
    )
    |> Deserializer.deserialize(
      :holder,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerHolder
    )
    |> Deserializer.deserialize(:line_item_type, :struct, Procore.Model.LineItemType4)
    |> Deserializer.deserialize(
      :markup_line_items,
      :list,
      Procore.Model.RestV10ChangeOrderPackagesPost201ResponseLineItemsInnerMarkupLineItemsInner
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsSyncPatch200ResponseEntitiesInnerAllOfCurrencyConfiguration
    )
  end
end
