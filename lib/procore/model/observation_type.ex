# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ObservationType do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :category,
    :category_key,
    :name,
    :active,
    :company_active,
    :parent_inactive,
    :in_use,
    :kind,
    :name_translations,
    :localized_name
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :category => String.t(),
          :category_key => String.t() | nil,
          :name => String.t(),
          :active => boolean() | nil,
          :company_active => boolean() | nil,
          :parent_inactive => boolean() | nil,
          :in_use => boolean() | nil,
          :kind => String.t() | nil,
          :name_translations => Procore.Model.ObservationTypeNameTranslations.t() | nil,
          :localized_name => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :name_translations,
      :struct,
      Procore.Model.ObservationTypeNameTranslations
    )
  end
end