# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.GenericToolItem1CreatedBy do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :login,
    :name,
    :company
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :login => String.t() | nil,
          :name => String.t() | nil,
          :company => Procore.Model.GenericToolItem1CreatedByAllOfCompany.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :company,
      :struct,
      Procore.Model.GenericToolItem1CreatedByAllOfCompany
    )
  end
end