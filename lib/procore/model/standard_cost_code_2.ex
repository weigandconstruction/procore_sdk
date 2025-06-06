# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.StandardCostCode2 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :parent_id,
    :code,
    :name,
    :origin_data,
    :origin_id
  ]

  @type t :: %__MODULE__{
          :parent_id => integer() | nil,
          :code => String.t() | nil,
          :name => String.t() | nil,
          :origin_data => String.t() | nil,
          :origin_id => String.t() | nil
        }

  def decode(value) do
    value
  end
end
