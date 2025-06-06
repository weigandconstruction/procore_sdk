# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdRecycleBinActionPlansPlanTemplateSectionsGet200ResponseInner do
  @moduledoc """
  Recycled Action Plan Template Section (Show)
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :deleted_at,
    :plan_template_id,
    :position,
    :title,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :created_at => String.t() | nil,
          :deleted_at => String.t() | nil,
          :plan_template_id => integer() | nil,
          :position => integer() | nil,
          :title => String.t() | nil,
          :updated_at => String.t() | nil
        }

  def decode(value) do
    value
  end
end
