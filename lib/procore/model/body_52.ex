# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body52 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :observation
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :observation => Procore.Model.Observation2.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:observation, :struct, Procore.Model.Observation2)
  end
end