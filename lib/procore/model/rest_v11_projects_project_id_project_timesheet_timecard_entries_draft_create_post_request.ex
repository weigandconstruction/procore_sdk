# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdProjectTimesheetTimecardEntriesDraftCreatePostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :timecard_entries
  ]

  @type t :: %__MODULE__{
          :date => Date.t() | nil,
          :timecard_entries => [Procore.Model.TimecardEntry.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:timecard_entries, :list, Procore.Model.TimecardEntry)
  end
end