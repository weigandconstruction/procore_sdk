# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ScheduleDates do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :substantial_completion_date,
    :finish_variance,
    :percentage_complete
  ]

  @type t :: %__MODULE__{
          :substantial_completion_date => Date.t() | nil,
          :finish_variance => String.t() | nil,
          :percentage_complete => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:substantial_completion_date, :date, nil)
  end
end
