# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV20CompaniesCompanyIdProjectsProjectIdInspectionTemplateItemsTemplateItemIdEvidenceConfigurationPatchRequestEvidenceConfigurationObservation do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :status_ids,
    :response_option_ids
  ]

  @type t :: %__MODULE__{
          :status_ids => [String.t()] | nil,
          :response_option_ids => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
