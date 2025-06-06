# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CompanyObservationType do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :localized_name,
    :category,
    :category_key,
    :company_active,
    :active,
    :kind,
    :parent_inactive,
    :in_use,
    :name_translations
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :localized_name => String.t() | nil,
          :category => String.t() | nil,
          :category_key => String.t() | nil,
          :company_active => boolean() | nil,
          :active => boolean() | nil,
          :kind => String.t() | nil,
          :parent_inactive => boolean() | nil,
          :in_use => boolean() | nil,
          :name_translations => String.t() | nil
        }

  def decode(value) do
    value
  end
end
