# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Extended3ExternalData do
  @moduledoc """
  External Data
  """

  @derive Jason.Encoder
  defstruct [
    :origin_id,
    :origin_code,
    :origin_data
  ]

  @type t :: %__MODULE__{
          :origin_id => String.t() | nil,
          :origin_code => String.t() | nil,
          :origin_data => String.t() | nil
        }

  def decode(value) do
    value
  end
end
