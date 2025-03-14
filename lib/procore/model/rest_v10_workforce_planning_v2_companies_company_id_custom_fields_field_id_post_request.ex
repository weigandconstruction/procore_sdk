# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdCustomFieldsFieldIdPostRequest do
  @moduledoc """
  Request body for updating a Custom Field.
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :can_filter,
    :integration_only,
    :on_projects,
    :on_people,
    :description,
    :values,
    :sort_by
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :can_filter => boolean() | nil,
          :integration_only => boolean() | nil,
          :on_projects => boolean() | nil,
          :on_people => boolean() | nil,
          :description => String.t() | nil,
          :values => [String.t()] | nil,
          :sort_by => String.t() | nil
        }

  def decode(value) do
    value
  end
end
