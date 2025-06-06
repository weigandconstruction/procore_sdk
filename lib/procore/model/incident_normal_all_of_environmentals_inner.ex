# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.IncidentNormalAllOfEnvironmentalsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :environmental_type,
    :estimated_cost_impact,
    :quantity_value,
    :quantity_unit_of_measure,
    :custom_fields,
    :id,
    :number,
    :full_number,
    :incident_id,
    :recordable,
    :incident_title,
    :incident_private,
    :summary,
    :description_plain_text,
    :description,
    :affected_company,
    :created_at,
    :deleted_at,
    :managed_equipment,
    :incident_created_by,
    :updated_at,
    :work_activity
  ]

  @type t :: %__MODULE__{
          :type => String.t() | nil,
          :environmental_type => Procore.Model.EnvironmentalType.t() | nil,
          :estimated_cost_impact => String.t() | nil,
          :quantity_value => String.t() | nil,
          :quantity_unit_of_measure => String.t() | nil,
          :custom_fields =>
            Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields.t()
            | nil,
          :id => integer() | nil,
          :number => integer() | nil,
          :full_number => String.t() | nil,
          :incident_id => integer() | nil,
          :recordable => boolean() | nil,
          :incident_title => String.t() | nil,
          :incident_private => boolean() | nil,
          :summary => String.t() | nil,
          :description_plain_text => String.t() | nil,
          :description => String.t() | nil,
          :affected_company =>
            Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor.t() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :managed_equipment =>
            Procore.Model.IncidentNormalAllOfEnvironmentalsInnerAllOfManagedEquipment.t() | nil,
          :incident_created_by =>
            Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee.t() | nil,
          :updated_at => DateTime.t() | nil,
          :work_activity => Procore.Model.WorkActivity.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:environmental_type, :struct, Procore.Model.EnvironmentalType)
    |> Deserializer.deserialize(
      :custom_fields,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdRecycleBinIncidentsWitnessStatementsGet200ResponseInnerCustomFields
    )
    |> Deserializer.deserialize(
      :affected_company,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWasteLogsGet200ResponseInnerVendor
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(
      :managed_equipment,
      :struct,
      Procore.Model.IncidentNormalAllOfEnvironmentalsInnerAllOfManagedEquipment
    )
    |> Deserializer.deserialize(
      :incident_created_by,
      :struct,
      Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(:work_activity, :struct, Procore.Model.WorkActivity)
  end
end
