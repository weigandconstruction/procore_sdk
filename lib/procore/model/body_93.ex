# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body93 do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :sub_job_id,
    :cost_code
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :sub_job_id => integer() | nil,
          :cost_code => Procore.Model.CostCode1.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:cost_code, :struct, Procore.Model.CostCode1)
  end
end