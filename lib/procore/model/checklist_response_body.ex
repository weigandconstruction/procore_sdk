# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ChecklistResponseBody do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :response
  ]

  @type t :: %__MODULE__{
          :response => Procore.Model.Response.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:response, :struct, Procore.Model.Response)
  end
end