# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.CoordinationIssueSyncResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :entities,
    :errors
  ]

  @type t :: %__MODULE__{
          :entities => [Procore.Model.RestV10CoordinationIssuesGet200ResponseInner.t()] | nil,
          :errors => [Procore.Model.CoordinationIssueSyncResponseErrorsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :entities,
      :list,
      Procore.Model.RestV10CoordinationIssuesGet200ResponseInner
    )
    |> Deserializer.deserialize(
      :errors,
      :list,
      Procore.Model.CoordinationIssueSyncResponseErrorsInner
    )
  end
end