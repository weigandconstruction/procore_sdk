# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10WorkflowActivityHistoriesPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :workflow_activity_history
  ]

  @type t :: %__MODULE__{
          :workflow_activity_history => Procore.Model.WorkflowActivityHistory.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :workflow_activity_history,
      :struct,
      Procore.Model.WorkflowActivityHistory
    )
  end
end
