# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BimModelsGet200ResponseInnerOneOf1CurrentRevisionBimGridline do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :filename,
    :coordinate_system,
    :project_id,
    :created_at,
    :updated_at,
    :gridline_file
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :filename => String.t() | nil,
          :coordinate_system => String.t() | nil,
          :project_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :gridline_file =>
            Procore.Model.RestV10ScheduleIntegrationGet200ResponseInnerFile.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :gridline_file,
      :struct,
      Procore.Model.RestV10ScheduleIntegrationGet200ResponseInnerFile
    )
  end
end