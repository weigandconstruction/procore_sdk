# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdTimesheetsTimesheetToBudgetConfigurationPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :apply_to_existing,
    :line_item_type_id,
    :erp_default_line_item_type_id
  ]

  @type t :: %__MODULE__{
          :apply_to_existing => boolean() | nil,
          :line_item_type_id => integer(),
          :erp_default_line_item_type_id => integer()
        }

  def decode(value) do
    value
  end
end