# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdTimesheetsPatch200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :updated_timecard_entries
  ]

  @type t :: %__MODULE__{
          :updated_timecard_entries => [Procore.Model.TimecardEntry2.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:updated_timecard_entries, :list, Procore.Model.TimecardEntry2)
  end
end
