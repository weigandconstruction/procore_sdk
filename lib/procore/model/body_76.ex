# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body76 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :image_category
  ]

  @type t :: %__MODULE__{
          :image_category => Procore.Model.ImageCategory1.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:image_category, :struct, Procore.Model.ImageCategory1)
  end
end