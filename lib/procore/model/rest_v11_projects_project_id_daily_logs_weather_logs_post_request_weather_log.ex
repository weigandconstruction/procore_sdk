# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsPostRequestWeatherLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :is_weather_delay,
    :calamity,
    :ground,
    :sky,
    :temperature,
    :wind,
    :average,
    :precipitation,
    :comments,
    :time,
    :drawing_revision_ids,
    :file_version_ids,
    :form_ids,
    :image_ids,
    :upload_ids,
    :document_management_document_revision_ids
  ]

  @type t :: %__MODULE__{
          :date => Date.t(),
          :is_weather_delay => integer() | nil,
          :calamity => String.t() | nil,
          :ground => String.t() | nil,
          :sky => String.t() | nil,
          :temperature => String.t() | nil,
          :wind => String.t() | nil,
          :average => String.t() | nil,
          :precipitation => String.t() | nil,
          :comments => String.t() | nil,
          :time => String.t() | nil,
          :drawing_revision_ids => [integer()] | nil,
          :file_version_ids => [integer()] | nil,
          :form_ids => [integer()] | nil,
          :image_ids => [integer()] | nil,
          :upload_ids => [String.t()] | nil,
          :document_management_document_revision_ids => [String.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
  end
end
