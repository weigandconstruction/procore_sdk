# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Location4 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :node_name,
    :parent_id
  ]

  @type t :: %__MODULE__{
          :node_name => String.t() | nil,
          :parent_id => integer() | nil
        }

  def decode(value) do
    value
  end
end
