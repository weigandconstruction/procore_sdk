# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdSubmittalsFilterOptionsCurrentRevisionGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :key,
    :value
  ]

  @type t :: %__MODULE__{
          :key => boolean() | nil,
          :value => String.t() | nil
        }

  def decode(value) do
    value
  end
end