# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Location do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :node_name,
    :parent_id,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :node_name => String.t() | nil,
          :parent_id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end
