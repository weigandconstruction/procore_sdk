# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdIncidentsConfigurationPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :configuration
  ]

  @type t :: %__MODULE__{
          :configuration =>
            Procore.Model.RestV10ProjectsProjectIdIncidentsConfigurationPatchRequestConfiguration.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :configuration,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdIncidentsConfigurationPatchRequestConfiguration
    )
  end
end
