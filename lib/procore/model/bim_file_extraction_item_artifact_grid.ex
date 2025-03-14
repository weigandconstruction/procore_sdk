# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BimFileExtractionItemArtifactGrid do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :filename,
    :coordinate_system,
    :gridline_file
  ]

  @type t :: %__MODULE__{
          :filename => String.t() | nil,
          :coordinate_system => String.t() | nil,
          :gridline_file =>
            Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInnerAttachmentsInner.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :gridline_file,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInnerAttachmentsInner
    )
  end
end
