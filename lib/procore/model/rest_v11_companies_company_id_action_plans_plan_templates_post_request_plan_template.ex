# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11CompaniesCompanyIdActionPlansPlanTemplatesPostRequestPlanTemplate do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :description,
    :private,
    :plan_type_id
  ]

  @type t :: %__MODULE__{
          :title => String.t(),
          :description => String.t() | nil,
          :private => boolean() | nil,
          :plan_type_id => integer()
        }

  def decode(value) do
    value
  end
end