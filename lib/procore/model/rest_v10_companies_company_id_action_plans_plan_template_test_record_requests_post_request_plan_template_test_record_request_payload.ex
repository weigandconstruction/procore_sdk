# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdActionPlansPlanTemplateTestRecordRequestsPostRequestPlanTemplateTestRecordRequestPayload do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :checklist_template_id
  ]

  @type t :: %__MODULE__{
          :checklist_template_id => integer() | nil
        }

  def decode(value) do
    value
  end
end