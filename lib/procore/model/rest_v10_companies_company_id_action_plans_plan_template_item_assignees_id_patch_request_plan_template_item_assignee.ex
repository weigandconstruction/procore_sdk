# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdActionPlansPlanTemplateItemAssigneesIdPatchRequestPlanTemplateItemAssignee do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :is_holding,
    :verification_method_id
  ]

  @type t :: %__MODULE__{
          :is_holding => boolean() | nil,
          :verification_method_id => integer() | nil
        }

  def decode(value) do
    value
  end
end
