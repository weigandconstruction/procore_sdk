# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdCategoriesCategoryIdSubcategoriesPost200Response do
  @moduledoc """
  Schema for a Subcategory ID response.
  """

  @derive Jason.Encoder
  defstruct [
    :id
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil
        }

  def decode(value) do
    value
  end
end
