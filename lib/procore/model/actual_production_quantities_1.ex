# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ActualProductionQuantities1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :quantity,
    :crew_id,
    :location_id
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :quantity => float() | nil,
          :crew_id => integer() | nil,
          :location_id => integer() | nil
        }

  def decode(value) do
    value
  end
end