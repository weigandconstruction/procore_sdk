# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdActionPlansPlanTemplatesPostRequestPlanTemplate do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :description,
    :plan_type_id
  ]

  @type t :: %__MODULE__{
          :title => String.t(),
          :description => String.t() | nil,
          :plan_type_id => integer()
        }

  def decode(value) do
    value
  end
end
