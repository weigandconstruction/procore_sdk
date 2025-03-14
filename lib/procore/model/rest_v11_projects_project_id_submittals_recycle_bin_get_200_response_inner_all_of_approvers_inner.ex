# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule Procore.Model.RestV11ProjectsProjectIdSubmittalsRecycleBinGet200ResponseInnerAllOfApproversInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :approver_type,
    :comment,
    :distributed,
    :response,
    :returned_date,
    :sent_date,
    :due_date,
    :response_required,
    :days_to_respond,
    :user,
    :attachments,
    :submittal_associated_attachment_ids,
    :id
  ]

  @type t :: %__MODULE__{
          :approver_type => String.t() | nil,
          :comment => String.t() | nil,
          :distributed => boolean() | nil,
          :response =>
            Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerResponse.t()
            | nil,
          :returned_date => Date.t() | nil,
          :sent_date => Date.t() | nil,
          :due_date => Date.t() | nil,
          :response_required => boolean() | nil,
          :days_to_respond => integer() | nil,
          :user => Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee.t() | nil,
          :attachments =>
            [
              Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner.t()
            ]
            | nil,
          :submittal_associated_attachment_ids => [integer()] | nil,
          :id => integer() | nil
        }

  alias Procore.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :response,
      :struct,
      Procore.Model.RestV11ProjectsProjectIdSubmittalsGet200ResponseInnerApproversInnerResponse
    )
    |> Deserializer.deserialize(:returned_date, :date, nil)
    |> Deserializer.deserialize(:sent_date, :date, nil)
    |> Deserializer.deserialize(:due_date, :date, nil)
    |> Deserializer.deserialize(
      :user,
      :struct,
      Procore.Model.RestV10TaskItemsGet200ResponseInnerAllOfAssignee
    )
    |> Deserializer.deserialize(
      :attachments,
      :list,
      Procore.Model.RestV10CompaniesCompanyIdWorkflowPermanentLogsGet200ResponseInnerAttachmentsInner
    )
  end
end
