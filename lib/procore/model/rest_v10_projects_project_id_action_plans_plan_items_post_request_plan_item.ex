# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdActionPlansPlanItemsPostRequestPlanItem do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :plan_section_id,
    :title,
    :description,
    :notes,
    :due_at,
    :holding_type
  ]

  @type t :: %__MODULE__{
          :plan_section_id => integer(),
          :title => String.t(),
          :description => String.t() | nil,
          :notes => String.t() | nil,
          :due_at => DateTime.t() | nil,
          :holding_type => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:due_at, :datetime, nil)
  end
end