# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.MaterialProperties do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :time_and_material_entry_id,
    :name,
    :description,
    :uom,
    :quantity
  ]

  @type t :: %__MODULE__{
          :time_and_material_entry_id => integer() | nil,
          :name => String.t() | nil,
          :description => String.t() | nil,
          :uom => String.t() | nil,
          :quantity => float() | nil
        }

  def decode(value) do
    value
  end
end
