# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body99 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :coordination_issue
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :coordination_issue => Procore.Model.Body99CoordinationIssue.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :coordination_issue,
      :struct,
      Procore.Model.Body99CoordinationIssue
    )
  end
end