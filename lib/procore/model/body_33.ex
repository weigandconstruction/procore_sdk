# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body33 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :logo
  ]

  @type t :: %__MODULE__{
          :logo => Procore.Model.Body33Logo.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:logo, :struct, Procore.Model.Body33Logo)
  end
end
