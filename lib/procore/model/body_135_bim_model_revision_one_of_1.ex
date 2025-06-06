# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body135BimModelRevisionOneOf1 do
  @moduledoc """
  BIM Model Revision object
  """

  @derive Jason.Encoder
  defstruct [
    :home_viewpoint_id,
    :suitability,
    :publish_status,
    :min_boundary,
    :max_boundary,
    :rotation,
    :geometry_file_id,
    :geometry_file_bundle_id,
    :property_file_id
  ]

  @type t :: %__MODULE__{
          :home_viewpoint_id => integer() | nil,
          :suitability => String.t() | nil,
          :publish_status => String.t() | nil,
          :min_boundary => Procore.Model.Body129BimPlanOneOfModelMapStart.t() | nil,
          :max_boundary => Procore.Model.Body129BimPlanOneOfModelMapStart.t() | nil,
          :rotation => Procore.Model.Body135BimModelRevisionOneOfRotation.t() | nil,
          :geometry_file_id => integer() | nil,
          :geometry_file_bundle_id => integer() | nil,
          :property_file_id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :min_boundary,
      :struct,
      Procore.Model.Body129BimPlanOneOfModelMapStart
    )
    |> Deserializer.deserialize(
      :max_boundary,
      :struct,
      Procore.Model.Body129BimPlanOneOfModelMapStart
    )
    |> Deserializer.deserialize(
      :rotation,
      :struct,
      Procore.Model.Body135BimModelRevisionOneOfRotation
    )
  end
end
