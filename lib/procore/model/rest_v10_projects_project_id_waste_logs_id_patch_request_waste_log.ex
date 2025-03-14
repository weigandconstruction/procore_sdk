# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWasteLogsIdPatchRequestWasteLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :approximate_quantity,
    :date,
    :datetime,
    :description,
    :disposal_location,
    :material,
    :method_of_disposal,
    :time_hour,
    :time_minute,
    :vendor_id
  ]

  @type t :: %__MODULE__{
          :approximate_quantity => integer() | nil,
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :description => String.t() | nil,
          :disposal_location => String.t() | nil,
          :material => String.t() | nil,
          :method_of_disposal => String.t() | nil,
          :time_hour => integer() | nil,
          :time_minute => integer() | nil,
          :vendor_id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
  end
end
