# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10MeetingAttendeeRecordsPost201Response do
  @moduledoc """
  Meeting Attendee record
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :meeting_id,
    :status,
    :login_information
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :meeting_id => integer() | nil,
          :status => String.t() | nil,
          :login_information =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :login_information,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
  end
end