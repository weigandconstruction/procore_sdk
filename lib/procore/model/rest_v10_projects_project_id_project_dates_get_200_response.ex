# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdProjectDatesGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :schedule_dates,
    :project_dates
  ]

  @type t :: %__MODULE__{
          :schedule_dates => Procore.Model.ScheduleDates.t() | nil,
          :project_dates =>
            [
              Procore.Model.RestV10ProjectsProjectIdProjectDatesGet200ResponseProjectDatesInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:schedule_dates, :struct, Procore.Model.ScheduleDates)
    |> Deserializer.deserialize(
      :project_dates,
      :list,
      Procore.Model.RestV10ProjectsProjectIdProjectDatesGet200ResponseProjectDatesInner
    )
  end
end
