# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDelayLogsIdPatchRequestDelayLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :comments,
    :date,
    :datetime,
    :daily_log_header_id,
    :delay_type,
    :location_id,
    :mt_location,
    :start_time,
    :start_time_hour,
    :start_time_minute,
    :end_time,
    :end_time_hour,
    :end_time_minute
  ]

  @type t :: %__MODULE__{
          :comments => String.t() | nil,
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :daily_log_header_id => integer() | nil,
          :delay_type => String.t() | nil,
          :location_id => integer() | nil,
          :mt_location => [String.t()] | nil,
          :start_time => String.t() | nil,
          :start_time_hour => float() | nil,
          :start_time_minute => float() | nil,
          :end_time => String.t() | nil,
          :end_time_hour => float() | nil,
          :end_time_minute => float() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
  end
end