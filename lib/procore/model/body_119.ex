# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body119 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :budget_modification
  ]

  @type t :: %__MODULE__{
          :budget_modification => Procore.Model.BudgetModification.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:budget_modification, :struct, Procore.Model.BudgetModification)
  end
end
