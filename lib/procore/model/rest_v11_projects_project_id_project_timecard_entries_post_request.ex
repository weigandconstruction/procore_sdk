# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdProjectTimecardEntriesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :hours,
    :lunch_time,
    :time_in,
    :time_out,
    :billable,
    :date,
    :description,
    :timecard_time_type_id,
    :timesheet_id,
    :cost_code_id,
    :sub_job_id,
    :location_id,
    :login_information_id,
    :party_id,
    :origin_id,
    :origin_data,
    :line_item_type_id,
    :"custom_field_%{custom_field_definition_id}"
  ]

  @type t :: %__MODULE__{
          :hours => String.t() | nil,
          :lunch_time => String.t() | nil,
          :time_in => String.t() | nil,
          :time_out => String.t() | nil,
          :billable => boolean() | nil,
          :date => Date.t() | nil,
          :description => String.t() | nil,
          :timecard_time_type_id => integer() | nil,
          :timesheet_id => integer() | nil,
          :cost_code_id => integer() | nil,
          :sub_job_id => integer() | nil,
          :location_id => integer() | nil,
          :login_information_id => integer() | nil,
          :party_id => integer() | nil,
          :origin_id => integer() | nil,
          :origin_data => String.t() | nil,
          :line_item_type_id => integer() | nil,
          :"custom_field_%{custom_field_definition_id}" =>
            Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(
      :"custom_field_%{custom_field_definition_id}",
      :struct,
      Procore.Model.WorkOrderContractCustomFieldCustomFieldDefinitionId
    )
  end
end
