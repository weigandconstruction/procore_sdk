# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDailyLogsDelayLogTypesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :delay_log_type
  ]

  @type t :: %__MODULE__{
          :delay_log_type =>
            Procore.Model.RestV10ProjectsProjectIdDailyLogsDelayLogTypesPostRequestDelayLogType.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :delay_log_type,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdDailyLogsDelayLogTypesPostRequestDelayLogType
    )
  end
end