# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInnerOneOf1 do
  @moduledoc """
  BIM Model Revision Plan associates BIM Plans to published BIM Model Revisions
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :bim_model_revision_id,
    :bim_plan,
    :bim_level,
    :created_at,
    :updated_at
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :bim_model_revision_id => integer() | nil,
          :bim_plan => Procore.Model.RestV10BimPlansGet200ResponseInner.t() | nil,
          :bim_level =>
            Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInnerOneOf1BimLevel.t() | nil,
          :created_at => DateTime.t() | nil,
          :updated_at => DateTime.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :bim_plan,
      :struct,
      Procore.Model.RestV10BimPlansGet200ResponseInner
    )
    |> Deserializer.deserialize(
      :bim_level,
      :struct,
      Procore.Model.RestV10BimModelRevisionPlansGet200ResponseInnerOneOf1BimLevel
    )
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:updated_at, :datetime, nil)
  end
end