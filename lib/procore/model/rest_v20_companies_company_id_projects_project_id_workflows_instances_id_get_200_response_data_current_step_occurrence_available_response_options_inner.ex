# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdWorkflowsInstancesIdGet200ResponseDataCurrentStepOccurrenceAvailableResponseOptionsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :response_type,
    :name
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :response_type => String.t() | nil,
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end
