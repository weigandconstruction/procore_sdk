# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdReportsAssignmentHistoryGet200ResponseInner do
  @moduledoc """
  Represents a single Assignment History report entry.
  """

  @derive Jason.Encoder
  defstruct [
    :person_name,
    :employee_number,
    :job_title,
    :project_name,
    :project_number,
    :start_day,
    :end_day,
    :start_time,
    :end_time,
    :cost_code_name,
    :cost_code_id,
    :label_name,
    :label_id,
    :duration
  ]

  @type t :: %__MODULE__{
          :person_name =>
            Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdReportsAssignmentHistoryGet200ResponseInnerPersonName.t()
            | nil,
          :employee_number => String.t() | nil,
          :job_title => String.t() | nil,
          :project_name => String.t() | nil,
          :project_number => String.t() | nil,
          :start_day => String.t() | nil,
          :end_day => String.t() | nil,
          :start_time => String.t() | nil,
          :end_time => String.t() | nil,
          :cost_code_name => String.t() | nil,
          :cost_code_id => String.t() | nil,
          :label_name => String.t() | nil,
          :label_id => String.t() | nil,
          :duration => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :person_name,
      :struct,
      Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdReportsAssignmentHistoryGet200ResponseInnerPersonName
    )
  end
end
