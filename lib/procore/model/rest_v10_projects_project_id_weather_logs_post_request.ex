# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWeatherLogsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :weather_log
  ]

  @type t :: %__MODULE__{
          :weather_log =>
            Procore.Model.RestV10ProjectsProjectIdWeatherLogsPostRequestWeatherLog.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :weather_log,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWeatherLogsPostRequestWeatherLog
    )
  end
end
