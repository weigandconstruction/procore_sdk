# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkOrderContractsPost201ResponseLineItemsInnerCostCode do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :full_code,
    :name,
    :biller,
    :biller_id,
    :biller_type,
    :budgeted,
    :code,
    :created_at,
    :deleted_at,
    :origin_data,
    :origin_id,
    :parent,
    :position,
    :sortable_code,
    :standard_cost_code_id,
    :standard_cost_code_list_id,
    :updated_at,
    :line_item_types
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :full_code => String.t() | nil,
          :name => String.t() | nil,
          :biller => String.t() | nil,
          :biller_id => integer() | nil,
          :biller_type => String.t() | nil,
          :budgeted => boolean() | nil,
          :code => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :parent => Procore.Model.ExtendedParent.t() | nil,
          :position => integer() | nil,
          :sortable_code => String.t() | nil,
          :standard_cost_code_id => integer() | nil,
          :standard_cost_code_list_id => integer() | nil,
          :updated_at => DateTime.t() | nil,
          :line_item_types => [Procore.Model.LineItemType.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:parent, :struct, Procore.Model.ExtendedParent)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:line_item_types, :list, Procore.Model.LineItemType)
  end
end