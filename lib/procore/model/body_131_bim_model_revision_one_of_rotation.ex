# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body131BimModelRevisionOneOfRotation do
  @moduledoc """
  3D rotation parameters for the model revision. Defaults to 0.0
  """

  @derive Jason.Encoder
  defstruct [
    :x,
    :y,
    :z
  ]

  @type t :: %__MODULE__{
          :x => float() | nil,
          :y => float() | nil,
          :z => float() | nil
        }

  def decode(value) do
    value
  end
end