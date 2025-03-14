# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdScheduleLookaheadsGet200ResponseInner do
  @moduledoc """
  Schedule Lookahead
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :start_date,
    :end_date
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :start_date => DateTime.t() | nil,
          :end_date => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:start_date, :datetime, nil)
    |> Deserializer.deserialize(:end_date, :datetime, nil)
  end
end
