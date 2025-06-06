# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkforcePlanningV2CompaniesCompanyIdPeoplePersonIdTimeOffGet200ResponsePagination do
  @moduledoc """
  Pagination metadata for the time off records.
  """

  @derive Jason.Encoder
  defstruct [
    :limit,
    :next_starting_after,
    :previous_starting_before,
    :total_possible
  ]

  @type t :: %__MODULE__{
          :limit => integer() | nil,
          :next_starting_after => String.t() | nil,
          :previous_starting_before => String.t() | nil,
          :total_possible => integer() | nil
        }

  def decode(value) do
    value
  end
end
