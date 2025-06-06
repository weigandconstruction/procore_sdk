# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CompanyInspectionTemplateItemType do
  @moduledoc """
  Item Type
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :category
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :category => String.t() | nil
        }

  def decode(value) do
    value
  end
end
