# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body68MeetingAttendeeRecord do
  @moduledoc """
  Meeting Attendee record
  """

  @derive Jason.Encoder
  defstruct [
    :status,
    :login_information_id
  ]

  @type t :: %__MODULE__{
          :status => String.t() | nil,
          :login_information_id => integer() | nil
        }

  def decode(value) do
    value
  end
end