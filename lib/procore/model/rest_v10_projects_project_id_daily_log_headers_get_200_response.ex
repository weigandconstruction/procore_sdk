# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdDailyLogHeadersGet200Response do
  @moduledoc """
  A daily log header
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :log_date,
    :log_datetime,
    :completed,
    :completed_by,
    :completed_at,
    :completable,
    :distributed,
    :distributed_by,
    :distributed_at,
    :distributable
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :log_date => Date.t() | nil,
          :log_datetime => DateTime.t() | nil,
          :completed => boolean() | nil,
          :completed_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :completed_at => DateTime.t() | nil,
          :completable => boolean() | nil,
          :distributed => boolean() | nil,
          :distributed_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :distributed_at => DateTime.t() | nil,
          :distributable => boolean() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:log_date, :date, nil)
    |> Deserializer.deserialize(:log_datetime, :datetime, nil)
    |> Deserializer.deserialize(
      :completed_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:completed_at, :datetime, nil)
    |> Deserializer.deserialize(
      :distributed_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(:distributed_at, :datetime, nil)
  end
end
