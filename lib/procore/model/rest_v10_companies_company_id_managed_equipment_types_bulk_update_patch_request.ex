# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdManagedEquipmentTypesBulkUpdatePatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :managed_equipment_type
  ]

  @type t :: %__MODULE__{
          :managed_equipment_type =>
            Procore.Model.RestV10CompaniesCompanyIdManagedEquipmentTypesBulkUpdatePatchRequestManagedEquipmentType.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :managed_equipment_type,
      :struct,
      Procore.Model.RestV10CompaniesCompanyIdManagedEquipmentTypesBulkUpdatePatchRequestManagedEquipmentType
    )
  end
end
