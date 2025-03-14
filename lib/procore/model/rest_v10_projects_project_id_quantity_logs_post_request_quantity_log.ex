# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdQuantityLogsPostRequestQuantityLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :description,
    :quantity,
    :unit,
    :cost_code_id,
    :location_id,
    :mt_location
  ]

  @type t :: %__MODULE__{
          :date => Date.t() | nil,
          :description => String.t() | nil,
          :quantity => integer() | nil,
          :unit => String.t() | nil,
          :cost_code_id => integer() | nil,
          :location_id => integer() | nil,
          :mt_location => [String.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
  end
end
