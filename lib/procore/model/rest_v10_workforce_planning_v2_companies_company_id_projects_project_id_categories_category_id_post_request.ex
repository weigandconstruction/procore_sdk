# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdProjectsProjectIdCategoriesCategoryIdPostRequest do
  @moduledoc """
  Request body schema for updating a Category within a Project.
  """

  @derive Jason.Encoder
  defstruct [
    :name
  ]

  @type t :: %__MODULE__{
          :name => String.t()
        }

  def decode(value) do
    value
  end
end
