# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdIncidentsActionsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :incident_action
  ]

  @type t :: %__MODULE__{
          :incident_action =>
            Procore.Model.RestV10ProjectsProjectIdIncidentsActionsPostRequestIncidentAction.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :incident_action,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdIncidentsActionsPostRequestIncidentAction
    )
  end
end