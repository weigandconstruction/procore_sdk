# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10RequestedChangesGet200Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :requested_changes
  ]

  @type t :: %__MODULE__{
          :requested_changes =>
            [
              Procore.Model.RestV11ProjectsProjectIdScheduleRequestedChangesReviewPatch200ResponseInner.t()
            ]
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :requested_changes,
      :list,
      Procore.Model.RestV11ProjectsProjectIdScheduleRequestedChangesReviewPatch200ResponseInner
    )
  end
end