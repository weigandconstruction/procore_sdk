# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdDailyLogsWeatherLogsGet200ResponseInnerAttachmentsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :url
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :url => String.t() | nil
        }

  def decode(value) do
    value
  end
end
