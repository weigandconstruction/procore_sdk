# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.IncidentWitnessStatementUpdateParameters do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :statement,
    :date_received,
    :witness_id,
    :upload_uuids,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids,
    :"custom_field_%{custom_field_definition_id}"
  ]

  @type t :: %__MODULE__{
          :statement => String.t() | nil,
          :date_received => Date.t() | nil,
          :witness_id => integer() | nil,
          :upload_uuids => [String.t()] | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date_received, :date, nil)
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end