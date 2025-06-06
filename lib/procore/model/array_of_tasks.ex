# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.ArrayOfTasks do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :entities,
    :errors
  ]

  @type t :: %__MODULE__{
          :entities => [Procore.Model.Task.t()] | nil,
          :errors => [Procore.Model.ArrayOfTasksErrorsInner.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:entities, :list, Procore.Model.Task)
    |> Deserializer.deserialize(:errors, :list, Procore.Model.ArrayOfTasksErrorsInner)
  end
end
