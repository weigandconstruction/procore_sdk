# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body47 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :change_order
  ]

  @type t :: %__MODULE__{
          :change_order => Procore.Model.ChangeOrder1.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:change_order, :struct, Procore.Model.ChangeOrder1)
  end
end
