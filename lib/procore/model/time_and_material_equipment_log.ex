# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimeAndMaterialEquipmentLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :time_and_material_equipment_log
  ]

  @type t :: %__MODULE__{
          :time_and_material_equipment_log =>
            Procore.Model.TimeAndMaterialEquipmentLogProperties.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :time_and_material_equipment_log,
      :struct,
      Procore.Model.TimeAndMaterialEquipmentLogProperties
    )
  end
end
