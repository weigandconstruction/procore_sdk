# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.DirectCostLineItem1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :amount,
    :company,
    :cost_code,
    :created_at,
    :currency_configuration,
    :description,
    :extended_type,
    :line_item_type,
    :origin_data,
    :origin_id,
    :position,
    :quantity,
    :tax_code_id,
    :total_amount,
    :extended_amount,
    :unit_cost,
    :uom,
    :updated_at,
    :wbs_code,
    :ref
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :amount => String.t() | nil,
          :company =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCompany.t() | nil,
          :cost_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode.t() | nil,
          :created_at => DateTime.t() | nil,
          :currency_configuration =>
            Procore.Model.DirectCostLineItem1CurrencyConfiguration.t() | nil,
          :description => String.t() | nil,
          :extended_type => String.t() | nil,
          :line_item_type => Procore.Model.LineItemType.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :position => integer() | nil,
          :quantity => String.t() | nil,
          :tax_code_id => integer() | nil,
          :total_amount => String.t() | nil,
          :extended_amount => String.t() | nil,
          :unit_cost => String.t() | nil,
          :uom => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :wbs_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode.t() | nil,
          :ref => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :company,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCompany
    )
    |> Deserializer.deserialize(
      :cost_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.DirectCostLineItem1CurrencyConfiguration
    )
    |> Deserializer.deserialize(:line_item_type, :struct, Procore.Model.LineItemType)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :wbs_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode
    )
  end
end