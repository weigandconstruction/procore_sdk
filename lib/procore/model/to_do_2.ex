# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ToDo2 do
  @moduledoc """
  ToDo object
  """

  @derive Jason.Encoder
  defstruct [
    :assignment_id,
    :color,
    :finish_datetime,
    :name,
    :description,
    :percentage,
    :private,
    :start_datetime
  ]

  @type t :: %__MODULE__{
          :assignment_id => integer() | nil,
          :color => String.t() | nil,
          :finish_datetime => DateTime.t() | nil,
          :name => String.t() | nil,
          :description => String.t() | nil,
          :percentage => integer() | nil,
          :private => boolean() | nil,
          :start_datetime => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:finish_datetime, :datetime, nil)
    |> Deserializer.deserialize(:start_datetime, :datetime, nil)
  end
end