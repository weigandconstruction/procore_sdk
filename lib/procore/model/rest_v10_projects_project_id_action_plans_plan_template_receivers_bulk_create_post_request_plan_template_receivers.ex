# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTemplateReceiversBulkCreatePostRequestPlanTemplateReceivers do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :plan_template_id,
    :party_ids
  ]

  @type t :: %__MODULE__{
          :plan_template_id => integer(),
          :party_ids => [integer()]
        }

  def decode(value) do
    value
  end
end