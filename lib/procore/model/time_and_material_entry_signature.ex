# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.TimeAndMaterialEntrySignature do
  @moduledoc """
  Time and Material Entry Signature
  """

  @derive Jason.Encoder
  defstruct [
    :time_and_material_signature_ids
  ]

  @type t :: %__MODULE__{
          :time_and_material_signature_ids => [integer()] | nil
        }

  def decode(value) do
    value
  end
end
