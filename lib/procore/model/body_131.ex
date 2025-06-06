# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body131 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :view,
    :bim_plans
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :view => String.t() | nil,
          :bim_plans => [Procore.Model.Body129BimPlan.t()]
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:bim_plans, :list, Procore.Model.Body129BimPlan)
  end
end
