# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemsGet200ResponseInnerPlanTemplateItemAssigneesInner do
  @moduledoc """
  Project Action Plan Template Item Assignee (Compact)
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :created_at,
    :is_holding,
    :party,
    :role,
    :updated_at,
    :verification_method
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :created_at => DateTime.t() | nil,
          :is_holding => boolean() | nil,
          :party =>
            Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplatesGet200ResponseInnerManager.t()
            | nil,
          :role => String.t() | nil,
          :updated_at => DateTime.t() | nil,
          :verification_method =>
            Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemsGet200ResponseInnerPlanTemplateItemAssigneesInnerVerificationMethod.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(
      :party,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplatesGet200ResponseInnerManager
    )
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
    |> Deserializer.deserialize(
      :verification_method,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateItemsGet200ResponseInnerPlanTemplateItemAssigneesInnerVerificationMethod
    )
  end
end