# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11DrawingAreasDrawingAreaIdDrawingsPost201Response do
  @moduledoc """
  Drawing
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :number,
    :title,
    :obsolete,
    :discipline
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :number => String.t() | nil,
          :title => String.t() | nil,
          :obsolete => boolean() | nil,
          :discipline => String.t() | nil
        }

  def decode(value) do
    value
  end
end
