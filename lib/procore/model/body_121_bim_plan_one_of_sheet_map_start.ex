# NOTE: This file is auto generated by OpenAPI Generator 7.8.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body121BimPlanOneOfSheetMapStart do
  @moduledoc """
  2D Coordinate Point
  """

  @derive Jason.Encoder
  defstruct [
    :x,
    :y
  ]

  @type t :: %__MODULE__{
          :x => float() | nil,
          :y => float() | nil
        }

  def decode(value) do
    value
  end
end