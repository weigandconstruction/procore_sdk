# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdChecklistListsIdPatchRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :list
  ]

  @type t :: %__MODULE__{
          :list => Procore.Model.RestV11ProjectsProjectIdChecklistListsIdPatchRequestList.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :list,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdChecklistListsIdPatchRequestList
    )
  end
end