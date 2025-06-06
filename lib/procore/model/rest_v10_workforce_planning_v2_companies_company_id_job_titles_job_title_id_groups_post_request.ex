# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdJobTitlesJobTitleIdGroupsPostRequest do
  @moduledoc """
  Request body for adding or removing a Job Title from a Group.
  """

  @derive Jason.Encoder
  defstruct [
    :group_id
  ]

  @type t :: %__MODULE__{
          :group_id => String.t()
        }

  def decode(value) do
    value
  end
end
