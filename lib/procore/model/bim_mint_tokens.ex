# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.BimMintTokens do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :access_token
  ]

  @type t :: %__MODULE__{
          :access_token => String.t() | nil
        }

  def decode(value) do
    value
  end
end
