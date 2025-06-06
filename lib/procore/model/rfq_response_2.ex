# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RfqResponse2 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :comment,
    :created_at,
    :deleted_at,
    :updated_at,
    :prostore_file_ids,
    :created_by
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :comment => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :deleted_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil,
          :prostore_file_ids => [integer()] | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:deleted_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
  end
end
