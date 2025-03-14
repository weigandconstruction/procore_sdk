# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV10ProjectsProjectIdInstructionsGet200ResponseInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :number,
    :title,
    :rich_text_description,
    :plain_text_description,
    :created_at,
    :date_received,
    :date_issued,
    :status,
    :private,
    :schedule_impact,
    :cost_impact,
    :instruction_type,
    :created_by,
    :instruction_from,
    :distribution_members,
    :attentions,
    :attachments,
    :trades
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :number => String.t() | nil,
          :title => String.t() | nil,
          :rich_text_description => String.t() | nil,
          :plain_text_description => String.t() | nil,
          :created_at => DateTime.t() | nil,
          :date_received => Date.t() | nil,
          :date_issued => DateTime.t() | nil,
          :status => String.t() | nil,
          :private => boolean() | nil,
          :schedule_impact =>
            Procore.Model.RestV10ProjectsProjectIdRfisGet200ResponseInnerAllOfScheduleImpact.t()
            | nil,
          :cost_impact =>
            Procore.Model.RestV10ProjectsProjectIdInstructionsGet200ResponseInnerCostImpact.t()
            | nil,
          :instruction_type =>
            Procore.Model.RestV10ProjectsProjectIdInstructionsGet200ResponseInnerInstructionType.t()
            | nil,
          :created_by =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :instruction_from =>
            Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t() | nil,
          :distribution_members =>
            [Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t()] | nil,
          :attentions =>
            [Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy.t()] | nil,
          :attachments =>
            [Procore.Model.RestV10SubmittalApproversIdPatch200ResponseInnerAttachmentsInner.t()]
            | nil,
          :trades => [Procore.Model.Trade2.t()] | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:created_at, :datetime, nil)
    |> Deserializer.deserialize(:date_received, :date, nil)
    |> Deserializer.deserialize(:date_issued, :datetime, nil)
    |> Deserializer.deserialize(
      :schedule_impact,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdRfisGet200ResponseInnerAllOfScheduleImpact
    )
    |> Deserializer.deserialize(
      :cost_impact,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdInstructionsGet200ResponseInnerCostImpact
    )
    |> Deserializer.deserialize(
      :instruction_type,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdInstructionsGet200ResponseInnerInstructionType
    )
    |> Deserializer.deserialize(
      :created_by,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :instruction_from,
      :struct,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :distribution_members,
      :list,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :attentions,
      :list,
      Procore.Model.RestV10ProjectsProjectIdWorkLogsGet200ResponseInnerCreatedBy
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10SubmittalApproversIdPatch200ResponseInnerAttachmentsInner
    )
    |> Deserializer.deserialize(:trades, :list, Procore.Model.Trade2)
  end
end
