# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.FinancialMarkup do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :applies_to_all,
    :compound,
    :holder_id,
    :holder_type,
    :markup_conditions,
    :markup_set,
    :name,
    :percentage,
    :position,
    :prime_line_item_id,
    :project_id,
    :wbs_code
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :applies_to_all => boolean() | nil,
          :compound => Procore.Model.FinancialMarkupCompound.t() | nil,
          :holder_id => integer() | nil,
          :holder_type => String.t() | nil,
          :markup_conditions => [Procore.Model.FinancialMarkupMarkupConditionsInner.t()] | nil,
          :markup_set => String.t() | nil,
          :name => String.t() | nil,
          :percentage => String.t() | nil,
          :position => integer() | nil,
          :prime_line_item_id => integer() | nil,
          :project_id => integer() | nil,
          :wbs_code => Procore.Model.FinancialMarkupWbsCode.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:compound, :struct, Procore.Model.FinancialMarkupCompound)
    |> Deserializer.deserialize(
      :markup_conditions,
      :list,
      Procore.Model.FinancialMarkupMarkupConditionsInner
    )
    |> Deserializer.deserialize(:wbs_code, :struct, Procore.Model.FinancialMarkupWbsCode)
  end
end
