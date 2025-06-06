# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrence do
  @moduledoc """
  Details of the current workflow step
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :step_uuid,
    :started_at,
    :overdue_at,
    :available_response_options,
    :response_occurrences
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :step_uuid => String.t() | nil,
          :started_at => DateTime.t() | nil,
          :overdue_at => DateTime.t() | nil,
          :available_response_options =>
            [
              Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrenceAvailableResponseOptionsInner.t()
            ]
            | nil,
          :response_occurrences =>
            [
              Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrenceResponseOccurrencesInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:started_at, :datetime, nil)
    |> Deserializer.deserialize(:overdue_at, :datetime, nil)
    |> Deserializer.deserialize(
      :available_response_options,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrenceAvailableResponseOptionsInner
    )
    |> Deserializer.deserialize(
      :response_occurrences,
      :list,
      Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrenceResponseOccurrencesInner
    )
  end
end
