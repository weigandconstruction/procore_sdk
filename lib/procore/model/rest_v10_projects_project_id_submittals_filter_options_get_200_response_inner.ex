# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalsFilterOptionsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :key,
    :value,
    :endpoint
  ]

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :value => String.t() | nil,
          :endpoint => String.t() | nil
        }

  def decode(value) do
    value
  end
end
