# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BusinessNormalViewProvidedServicesInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :key,
    :path,
    :level
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :key => String.t() | nil,
          :path => String.t() | nil,
          :level => String.t() | nil
        }

  def decode(value) do
    value
  end
end
