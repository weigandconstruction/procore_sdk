# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdDirectCostsPost201ResponseVendor do
  @moduledoc """
  Vendor
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :name => String.t() | nil
        }

  def decode(value) do
    value
  end
end