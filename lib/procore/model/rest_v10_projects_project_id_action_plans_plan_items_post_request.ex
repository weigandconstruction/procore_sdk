# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdActionPlansPlanItemsPostRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :plan_item
  ]

  @type t :: %__MODULE__{
          :plan_item =>
            Procore.Model.RestV10ProjectsProjectIdActionPlansPlanItemsPostRequestPlanItem.t()
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :plan_item,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdActionPlansPlanItemsPostRequestPlanItem
    )
  end
end