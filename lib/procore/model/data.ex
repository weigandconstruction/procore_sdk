# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Data do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :notes,
    :data
  ]

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :notes => String.t() | nil,
          :data => String.t()
        }

  def decode(value) do
    value
  end
end
