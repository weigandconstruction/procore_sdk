# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10PotentialChangeOrdersPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :project_id,
    :contract_id,
    :change_order
  ]

  @type t :: %__MODULE__{
          :project_id => integer(),
          :contract_id => integer(),
          :change_order => Procore.Model.RestV10PotentialChangeOrdersPostRequestChangeOrder.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :change_order,
      :struct,
      Procore.Model.RestV10PotentialChangeOrdersPostRequestChangeOrder
    )
  end
end