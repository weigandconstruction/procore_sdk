# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdUomsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :is_standard,
    :name,
    :description,
    :uom_category
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :is_standard => boolean() | nil,
          :name => String.t() | nil,
          :description => String.t() | nil,
          :uom_category =>
            Procore.Model.RestV10CompaniesCompanyIdUomsGet200ResponseInnerUomCategory.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :uom_category,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdUomsGet200ResponseInnerUomCategory
    )
  end
end
