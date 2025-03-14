# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTestRecordsPostRequestPlanTestRecordPayload do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :checklist_id,
    :form_id,
    :generic_tool_id,
    :meeting_id,
    :submittal_log_id,
    :observation_item_id,
    :attachment
  ]

  @type t :: %__MODULE__{
          :checklist_id => integer() | nil,
          :form_id => integer() | nil,
          :generic_tool_id => integer() | nil,
          :meeting_id => integer() | nil,
          :submittal_log_id => integer() | nil,
          :observation_item_id => integer() | nil,
          :attachment =>
            Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTestRecordsPostRequestPlanTestRecordPayloadOneOf6Attachment.t()
            | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :attachment,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdActionPlansPlanTestRecordsPostRequestPlanTestRecordPayloadOneOf6Attachment
    )
  end
end
