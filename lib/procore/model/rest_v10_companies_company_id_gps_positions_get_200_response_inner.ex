# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompaniesCompanyIdGpsPositionsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :company_id,
    :latitude,
    :longitude,
    :altitude,
    :horizontal_accuracy,
    :vertical_accuracy,
    :timestamp,
    :created_by,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :company_id => integer() | nil,
          :latitude => float() | nil,
          :longitude => float() | nil,
          :altitude => float() | nil,
          :horizontal_accuracy => float() | nil,
          :vertical_accuracy => float() | nil,
          :timestamp => DateTime.t() | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:timestamp, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end