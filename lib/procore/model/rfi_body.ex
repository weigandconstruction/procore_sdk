# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RfiBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :rfi
  ]

  @type t :: %__MODULE__{
          :rfi => Procore.Model.RfiBodyRfi.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:rfi, :struct, Procore.Model.RfiBodyRfi)
  end
end