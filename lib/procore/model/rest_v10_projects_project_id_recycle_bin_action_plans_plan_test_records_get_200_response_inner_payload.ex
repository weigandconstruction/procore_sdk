# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdRecycleBinActionPlansPlanTestRecordsGet200ResponseInnerPayload do
  @moduledoc """
  Contains specific attributes depending on the type of Action Plan Test Record
  """

  @derive Jason.Encoder
  defstruct [
    :checklist_id,
    :checklist_template_id,
    :attachment
  ]

  @type t :: %__MODULE__{
          :checklist_id => integer() | nil,
          :checklist_template_id => integer() | nil,
          :attachment =>
            Procore.Model.RestV10ProjectsProjectIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInnerPayloadAttachment.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachment,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdInspectionTemplatesInspectionTemplateIdItemReferencesGet200ResponseInnerPayloadAttachment
    )
  end
end
