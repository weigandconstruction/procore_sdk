# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ProjectObservationTypeCreateBody1 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :observation_type
  ]

  @type t :: %__MODULE__{
          :observation_type => Procore.Model.ProjectObservationType2.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:observation_type, :struct, Procore.Model.ProjectObservationType2)
  end
end
