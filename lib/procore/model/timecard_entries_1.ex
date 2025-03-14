# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimecardEntries1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :approval_status,
    :billable,
    :cost_code_id,
    :crew_id,
    :date,
    :description,
    :hours,
    :location_id,
    :origin_id,
    :origin_data,
    :party_id,
    :project_id,
    :set_timecard_time_type_automatically,
    :sub_job_id,
    :time_in,
    :time_out,
    :timesheet_id,
    :timecard_time_type_id,
    :updates,
    :user_id,
    :work_classification_id
  ]

  @type t :: %__MODULE__{
          :approval_status => String.t() | nil,
          :billable => boolean() | nil,
          :cost_code_id => integer() | nil,
          :crew_id => integer() | nil,
          :date => Date.t() | nil,
          :description => String.t() | nil,
          :hours => integer() | nil,
          :location_id => integer() | nil,
          :origin_id => integer() | nil,
          :origin_data => String.t() | nil,
          :party_id => integer() | nil,
          :project_id => integer() | nil,
          :set_timecard_time_type_automatically => boolean() | nil,
          :sub_job_id => integer() | nil,
          :time_in => DateTime.t() | nil,
          :time_out => DateTime.t() | nil,
          :timesheet_id => integer() | nil,
          :timecard_time_type_id => integer() | nil,
          :updates => [Procore.Model.TimecardEntries1UpdatesInner.t()],
          :user_id => integer() | nil,
          :work_classification_id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:time_in, :datetime, nil)
    |> Deserializer.deserialize(:time_out, :datetime, nil)
    |> Deserializer.deserialize(:updates, :list, Procore.Model.TimecardEntries1UpdatesInner)
  end
end
