# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDeliveryLogsIdPatchRequestDeliveryLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :comments,
    :contents,
    :date,
    :datetime,
    :delivery_from,
    :time_hour,
    :time_minute,
    :tracking_number,
    :status
  ]

  @type t :: %__MODULE__{
          :comments => String.t() | nil,
          :contents => String.t() | nil,
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :delivery_from => String.t() | nil,
          :time_hour => integer() | nil,
          :time_minute => integer() | nil,
          :tracking_number => String.t() | nil,
          :status => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
  end
end