# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDirectCostsLineItemsGet200ResponseInner do
  @moduledoc """
  Line Item
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :amount,
    :cost_code,
    :created_at,
    :description,
    :extended_amount,
    :extended_type,
    :holder,
    :line_item_type,
    :origin_id,
    :position,
    :project,
    :quantity,
    :total_amount,
    :unit_cost,
    :uom,
    :updated_at,
    :wbs_code,
    :currency_configuration
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :amount => String.t() | nil,
          :cost_code =>
            Procore.Model.RestV10ProjectsProjectIdDirectCostsLineItemsGet200ResponseInnerCostCode.t()
            | nil,
          :created_at => DateTime.t() | nil,
          :description => String.t() | nil,
          :extended_amount => String.t() | nil,
          :extended_type => String.t() | nil,
          :holder =>
            Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInnerAllOfHolder.t() | nil,
          :line_item_type =>
            Procore.Model.RestV10ProjectsProjectIdDirectCostsLineItemsGet200ResponseInnerLineItemType.t()
            | nil,
          :origin_id => String.t() | nil,
          :position => integer() | nil,
          :project =>
            Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfProject.t() | nil,
          :quantity => String.t() | nil,
          :total_amount => String.t() | nil,
          :unit_cost => String.t() | nil,
          :uom => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :wbs_code =>
            Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode.t() | nil,
          :currency_configuration =>
            Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfCurrencyConfiguration.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :cost_code,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdDirectCostsLineItemsGet200ResponseInnerCostCode
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :holder,
      :struct,
      Procore.Model.ArrayOfPotentialChangeOrderLineItemsErrorsInnerAllOfHolder
    )
    |> Deserializer.deserialize(
      :line_item_type,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdDirectCostsLineItemsGet200ResponseInnerLineItemType
    )
    |> Deserializer.deserialize(
      :project,
      :struct,
      Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfProject
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :wbs_code,
      :struct,
      Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerWbsCode
    )
    |> Deserializer.deserialize(
      :currency_configuration,
      :struct,
      Procore.Model.RestV10WorkOrderContractsGet200ResponseInnerAllOfCurrencyConfiguration
    )
  end
end
