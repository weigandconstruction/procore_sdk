# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10MeetingTopicsParentMinutesGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :created_on,
    :minutes,
    :no_minutes
  ]

  @type t :: %__MODULE__{
          :created_on => Date.t() | nil,
          :minutes => String.t() | nil,
          :no_minutes => boolean() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_on, :date, nil)
  end
end