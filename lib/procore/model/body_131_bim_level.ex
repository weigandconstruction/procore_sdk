# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body131BimLevel do
  @moduledoc """
  BIM Level
  """

  @derive Jason.Encoder
  defstruct [
    :elevation,
    :bim_file_id,
    :location_id
  ]

  @type t :: %__MODULE__{
          :elevation => float(),
          :bim_file_id => integer(),
          :location_id => integer()
        }

  def decode(value) do
    value
  end
end