# NOTE: This file is auto generated by OpenAPI Generator 7.9.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.Body131BimModelRevisionOneOf do
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
    :published_model_upload_uuid,
    :object_definition_upload_uuid
  ]

  @type t :: %__MODULE__{
          :home_viewpoint_id => integer() | nil,
          :suitability => String.t() | nil,
          :publish_status => String.t() | nil,
          :min_boundary => Procore.Model.Body125BimPlanOneOfModelMapStart.t() | nil,
          :max_boundary => Procore.Model.Body125BimPlanOneOfModelMapStart.t() | nil,
          :rotation => Procore.Model.Body131BimModelRevisionOneOfRotation.t() | nil,
          :published_model_upload_uuid => String.t() | nil,
          :object_definition_upload_uuid => String.t() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :min_boundary,
      :struct,
      Procore.Model.Body125BimPlanOneOfModelMapStart
    )
    |> Deserializer.deserialize(
      :max_boundary,
      :struct,
      Procore.Model.Body125BimPlanOneOfModelMapStart
    )
    |> Deserializer.deserialize(
      :rotation,
      :struct,
      Procore.Model.Body131BimModelRevisionOneOfRotation
    )
  end
end