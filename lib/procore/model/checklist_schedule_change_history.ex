# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistScheduleChangeHistory do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :column,
    :old_value,
    :new_value,
    :created_by_id,
    :created_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :column => String.t() | nil,
          :old_value => String.t() | nil,
          :new_value => String.t() | nil,
          :created_by_id => integer() | nil,
          :created_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
  end
end
