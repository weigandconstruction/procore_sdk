# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body22 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :files
  ]

  @type t :: %__MODULE__{
          :files => [Procore.Model.Body22FilesInner.t()]
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:files, :list, Procore.Model.Body22FilesInner)
  end
end
