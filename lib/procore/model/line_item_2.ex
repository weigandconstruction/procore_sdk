# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.LineItem2 do
  @moduledoc """
  Line Item object
  """

  @derive Jason.Encoder
  defstruct [
    :amount,
    :wbs_code_id,
    :cost_code_id,
    :description,
    :direct_cost_id,
    :extended_type,
    :quantity,
    :line_item_type_id,
    :origin_data,
    :origin_id,
    :unit_cost,
    :uom
  ]

  @type t :: %__MODULE__{
          :amount => float() | nil,
          :wbs_code_id => integer() | nil,
          :cost_code_id => integer() | nil,
          :description => String.t() | nil,
          :direct_cost_id => integer() | nil,
          :extended_type => String.t() | nil,
          :quantity => float() | nil,
          :line_item_type_id => integer() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil,
          :unit_cost => float() | nil,
          :uom => String.t() | nil
        }

  def decode(value) do
    value
  end
end