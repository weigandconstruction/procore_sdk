# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body66 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :location
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :location => Procore.Model.Location4.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:location, :struct, Procore.Model.Location4)
  end
end