# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdWorkLogsPostRequestWorkLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :comments,
    :date,
    :hourly_rate,
    :hours,
    :reimbursable,
    :resource_name,
    :showed,
    :workers
  ]

  @type t :: %__MODULE__{
          :comments => String.t() | nil,
          :date => Date.t() | nil,
          :hourly_rate => float() | nil,
          :hours => float() | nil,
          :reimbursable => boolean() | nil,
          :resource_name => String.t() | nil,
          :showed => boolean() | nil,
          :workers => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
  end
end