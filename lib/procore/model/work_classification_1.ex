# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.WorkClassification1 do
  @moduledoc """
  Work Classification Object
  """

  @derive Jason.Encoder
  defstruct [
    :is_active
  ]

  @type t :: %__MODULE__{
          :is_active => boolean() | nil
        }

  def decode(value) do
    value
  end
end