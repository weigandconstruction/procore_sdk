# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntryDefinitionId do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data_type,
    :value
  ]

  @type t :: %__MODULE__{
          :data_type => String.t() | nil,
          :value =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntryDefinitionIdValue.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :value,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFieldsCustomFieldCustomFieldLovEntryDefinitionIdValue
    )
  end
end