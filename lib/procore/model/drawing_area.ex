# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.DrawingArea do
  @moduledoc """
  Drawing Area
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :drawings_count,
    :description
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil,
          :drawings_count => integer() | nil,
          :description => String.t() | nil
        }

  def decode(value) do
    value
  end
end
