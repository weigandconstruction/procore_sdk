# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10CompanyConfigurationGet400Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :error
  ]

  @type t :: %__MODULE__{
          :error => Procore.Model.RestV10CompanyConfigurationGet400ResponseError.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :error,
      :struct,
      Procore.Model.RestV10CompanyConfigurationGet400ResponseError
    )
  end
end
