# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdIncidentsPostRequestIncident do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :event_date,
    :distribution_member_ids,
    :private,
    :recordable,
    :status,
    :time_unknown,
    :title,
    :contributing_behavior_id,
    :contributing_condition_id,
    :hazard_id,
    :location_id,
    :environmentals,
    :injuries,
    :near_misses,
    :property_damages,
    :witness_statements_attributes,
    :upload_uuids,
    :"custom_field_%{custom_field_definition_id}",
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids
  ]

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :event_date => DateTime.t() | nil,
          :distribution_member_ids => [integer()] | nil,
          :private => boolean() | nil,
          :recordable => boolean() | nil,
          :status => String.t() | nil,
          :time_unknown => boolean() | nil,
          :title => String.t() | nil,
          :contributing_behavior_id => integer() | nil,
          :contributing_condition_id => integer() | nil,
          :hazard_id => integer() | nil,
          :location_id => integer() | nil,
          :environmentals => [Procore.Model.IncidentEnvironmentalUpdateParameters.t()] | nil,
          :injuries => [Procore.Model.IncidentInjuryUpdateParameters.t()] | nil,
          :near_misses => [Procore.Model.IncidentNearMissUpdateParameters.t()] | nil,
          :property_damages => [Procore.Model.IncidentPropertyDamageUpdateParameters.t()] | nil,
          :witness_statements_attributes =>
            [Procore.Model.IncidentWitnessStatementUpdateParameters1.t()] | nil,
          :upload_uuids => [String.t()] | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:event_date, :datetime, nil)
    |> Deserializer.deserialize(
      :environmentals,
      :list,
      Procore.Model.IncidentEnvironmentalUpdateParameters
    )
    |> Deserializer.deserialize(:injuries, :list, Procore.Model.IncidentInjuryUpdateParameters)
    |> Deserializer.deserialize(
      :near_misses,
      :list,
      Procore.Model.IncidentNearMissUpdateParameters
    )
    |> Deserializer.deserialize(
      :property_damages,
      :list,
      Procore.Model.IncidentPropertyDamageUpdateParameters
    )
    |> Deserializer.deserialize(
      :witness_statements_attributes,
      :list,
      Procore.Model.IncidentWitnessStatementUpdateParameters1
    )
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end