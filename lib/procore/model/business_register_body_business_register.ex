# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BusinessRegisterBodyBusinessRegister do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :identifier
  ]

  @type t :: %__MODULE__{
          :type => String.t(),
          :identifier => String.t()
        }

  def decode(value) do
    value
  end
end