# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RfiUpdateBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :rfi
  ]

  @type t :: %__MODULE__{
          :rfi => Procore.Model.RfiUpdateBodyRfi.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:rfi, :struct, Procore.Model.RfiUpdateBodyRfi)
  end
end
