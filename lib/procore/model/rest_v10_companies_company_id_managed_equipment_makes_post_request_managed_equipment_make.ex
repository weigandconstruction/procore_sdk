# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdManagedEquipmentMakesPostRequestManagedEquipmentMake do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :is_active
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :is_active => boolean()
        }

  def decode(value) do
    value
  end
end