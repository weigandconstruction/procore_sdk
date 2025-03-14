# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdProductivityLogsPostRequestProductivityLog do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :date,
    :datetime,
    :line_item_id,
    :notes,
    :quantity_delivered,
    :quantity_used
  ]

  @type t :: %__MODULE__{
          :date => Date.t() | nil,
          :datetime => DateTime.t() | nil,
          :line_item_id => integer(),
          :notes => String.t() | nil,
          :quantity_delivered => String.t() | nil,
          :quantity_used => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:date, :date, nil)
    |> Deserializer.deserialize(:datetime, :datetime, nil)
  end
end
