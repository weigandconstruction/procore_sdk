# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BudgetViewSnapshotsPost201Response do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data => Procore.Model.RestV10BudgetViewSnapshotsGet200ResponseInner.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :data,
      :struct,
      Procore.Model.RestV10BudgetViewSnapshotsGet200ResponseInner
    )
  end
end