# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body83 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :drawing
  ]

  @type t :: %__MODULE__{
          :drawing => Procore.Model.Drawing1.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:drawing, :struct, Procore.Model.Drawing1)
  end
end